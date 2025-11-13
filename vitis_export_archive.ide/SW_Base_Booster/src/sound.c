#include "sound.h" // Header que contiene las funciones utilizadas
#include "melody.h" // Header que define la estructura de una nota
#include "ADC.h" // Header que permite realizar la lectura del potenciometro
#include "xscugic.h" // "General Interrupt Controller"
#include "xtmrctr.h" // "Axi Timer
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "xil_io.h"
#include "Delay.h"


// Definimos una variable modificada dentro de la interrupcion:
volatile int current_note = 0; // Indice de la nota actual

// Melody data
Note melody[MAX_NOTES]; // Adjust MAX_NOTES if needed
int melody_length = 0;  // Length of the current melody

// Instancia del AXI Timer:
XTmrCtr TimerInstance;

// Definimos la direccion del buzzer como "Buzzer_base_addr":
#define BUZZER_BASE_ADDR     XPAR_BUZZERBOOSTER_DRIVER_0_S00_AXI_BASEADDR

// Asignamos nombre a cada uno de los 4 registros del buzzer (cada uno tendra una funcionalidad):
#define BUZZER_REG_CONTROL   0x00 // slv_reg0: Control y volumen
#define BUZZER_REG_FREQUENCY 0x04 // slv_reg1: Frecuencia
#define BUZZER_REG_DURATION  0x08 // slv_reg2: Duracion
#define BUZZER_REG_STATUS    0x0C // slv_reg3: Estado (busy, stop, start, restart)

// Asignamos nombre al AXI TIMER 0 y a su linea de interrupcion GIC.
#define TIMER_DEVICE_ID      XPAR_AXI_TIMER_0_DEVICE_ID
#define TIMER_INTR_ID        XPAR_FABRIC_AXI_TIMER_0_INTERRUPT_INTR

// Funcion que inicializa el TIMER asociado al audio:
int Sound_Initialize_Timer(u16 DeviceId) {
    int Status; // Status recibe el macro (numero entero) de XTmrCtr_Initialize

    // Inicializacion del timer: Recibe puntero al timer y su id.
    Status = XTmrCtr_Initialize(&TimerInstance, DeviceId);

    // Retorna mensaje de error si falla inicializacion:
    if (Status != XST_SUCCESS) {
        xil_printf("Falla inicializacion del timer de sonido\r\n");
        return XST_FAILURE;
    }

    // Pointer del timer, canal 0 realiza conteo, lo hace de manera descendente.
    XTmrCtr_SetOptions(&TimerInstance, 0, XTC_DOWN_COUNT_OPTION | XTC_INT_MODE_OPTION);

    // Retorna "exito en inicializacion si no hay error".
    return XST_SUCCESS;
}

// Funcion para configurar el sistema de interrupcion del audio (recibe un pointer al controlador
// del GIC tal que recibe un tipo de dato XScuGic y retorna Status)
int Sound_Setup_Interrupt_System(XScuGic *IntcInstancePtr) {
    int Status;

    // Conexion de la interrupcion: Recibe el controlador GIC que gestiona la interrupcion,
    // El id del temporizador, la funcion que sera ejecutada durante la interrupcion, direccion
    // de instancia al temporizador.
    Status = XScuGic_Connect(IntcInstancePtr, TIMER_INTR_ID,
                             (Xil_ExceptionHandler)Sound_Timer_Interrupt_Handler,
                             (void *)&TimerInstance);
    if (Status != XST_SUCCESS) {
        xil_printf("Fallo en conectarse el Sound Timer Interrupt Handler\r\n");
        return XST_FAILURE;
    }

    // Habilita la interrupcion: Cada vez que hay una interrupcion, se ejecuta la funcion declarada
    XScuGic_Enable(IntcInstancePtr, TIMER_INTR_ID);
    return XST_SUCCESS;
}

// Handler de la interrupcion de sonido
void Sound_Timer_Interrupt_Handler(void *CallBackRef) {

	// CallBackRef (puntero generico) es casteado al tipo XTmrCtr (tipo especifico):
    XTmrCtr *InstancePtr = (XTmrCtr *)CallBackRef;

    // Limpieza de la interrupcion (lectura y escritura como  mecanismo de acknowledge):

    // Lectura del registro del temporizador 0 desde el hardware:
    u32 ControlStatusReg = XTmrCtr_GetControlStatusReg(InstancePtr->BaseAddress, 0);
    // Escritura del registro del temporizador 0 para limpiar el flag de interrupcion:
    XTmrCtr_SetControlStatusReg(InstancePtr->BaseAddress, 0, ControlStatusReg);

    // Se detiene el timer 0:
    XTmrCtr_Stop(InstancePtr, 0);


    // Se toca la siguiente nota
    Play_Next_Note();
}

void Play_Next_Note() {
    // Esperar mientras se reproduce una nota
    if (melody[current_note].frequency != REST) {
        while (Xil_In32(BUZZER_BASE_ADDR + BUZZER_REG_STATUS) & 0x1) {
            // Si la nota no es un REST, esperamos a que el buzzer no este ocupado
        	// Esto se determina por el status bit 0 == 0.
            delay_ms(1);
        }
    }
    // Si no se ha terminado la melodia:
    if (current_note < melody_length) {
    	// Lectura de la informacion de melody.c
        uint32_t frequency = melody[current_note].frequency; // Lectura de la frecuencia
        uint32_t duration_ms = melody[current_note].duration; // Lectura de duracion de nota
        uint32_t duration_counts = duration_ms * 100000; // Ajustamos la duracion a ciclos de clk (100 MHz)

        // Lectura del potenciometro 1 para el volumen:
        uint16_t pot_value = read_POT1();
        // Se reescala el valor para entregar datos entre 0 y 511
        uint16_t scaled_value = pot_value / 16;

        // Inicializa el buzzer con los parametros necesarios.
        Initialize_Buzzer(&frequency, &duration_counts, &scaled_value);

        // Buffer para la duracion del timer (mismo valor que duration_counts)
        uint32_t timer_counts = duration_ms * 100000;

        // Configura el valor de reseteo del timer 0 para hacer la interrupcion:
        XTmrCtr_SetResetValue(&TimerInstance, 0, timer_counts);

        // Inicia el timer 0
        XTmrCtr_Start(&TimerInstance, 0);

        // Avance a la siguiente nota:
        current_note++;

        // Si ya se termino la melodia, se loopea:
    } else if (current_note >= melody_length &&  melody_length > 0) {
        xil_printf("Melodia termino de reproducirse.\r\n");
        current_note = 0;
        Play_Next_Note();
    }

}

// Inicializacion del buzzer:
void Initialize_Buzzer(uint32_t *frequency, uint32_t *duration_counts, uint16_t *volume) {

	// "dereferencia" de los pointers:
    uint32_t freq = *frequency;
    uint32_t duration = *duration_counts;
    uint16_t vol = *volume;

    // Lectura de los bits de control con Xil_in (bits 0-2):
    uint32_t control_bits = Xil_In32(BUZZER_BASE_ADDR + BUZZER_REG_CONTROL) & 0x00000007;

    // Prepara los bits de volumen (bits 3-11) para posterior escritura
    uint32_t volume_bits = ((uint32_t)(vol & 0x1FF)) << 3; // 9 bits para 0-511

    // Concatenacion de los bits de control y de volumen
    uint32_t control_and_volume = control_bits | volume_bits;

    // Se escribe la frecuencia deseada al registro 1 (slv_reg1)
    Xil_Out32(BUZZER_BASE_ADDR + BUZZER_REG_FREQUENCY, freq);

    // Se escribe la duracion deseada al registro 2 (slv_reg2)
    Xil_Out32(BUZZER_BASE_ADDR + BUZZER_REG_DURATION, duration);

    // Escribe los bits de control y de volumen al registro 0 (slv_reg0)
    Xil_Out32(BUZZER_BASE_ADDR + BUZZER_REG_CONTROL, control_and_volume);

    // Se genera un pequeño pulso que indica que se debe realizar una activacion del buzzer:
    // Si se escribe '1' en el bit 0, se activa el buzzer.
    Xil_Out32(BUZZER_BASE_ADDR + BUZZER_REG_CONTROL, control_and_volume | 0x1);
    // Desactiva el buzzer escribiendo bit '0' en el bit 0.
    Xil_Out32(BUZZER_BASE_ADDR + BUZZER_REG_CONTROL, control_and_volume & ~0x1);
}
