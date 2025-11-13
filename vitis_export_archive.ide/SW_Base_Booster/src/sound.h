// Header de sound:
#ifndef SOUND_H
#define SOUND_H

#include <stdint.h>
#include "xil_types.h"
#include "xscugic.h"
#include "xtmrctr.h"

// Declaracion de variables globales
extern volatile int current_note;
extern XTmrCtr TimerInstance;

// Funciones que se utilizaran en sound.c
int Sound_Initialize_Timer(u16 DeviceId);
int Sound_Setup_Interrupt_System(XScuGic *IntcInstancePtr);
void Sound_Timer_Interrupt_Handler(void *CallBackRef);
void Play_Next_Note();
void Initialize_Buzzer(uint32_t *frequency, uint32_t *duration_counts, uint16_t *volume);

#endif
