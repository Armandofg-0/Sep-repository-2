/***************** Libraries *****************************/
#include "xparameters.h"
#include "xil_exception.h"
#include <stdio.h>
#include "xgpio.h"

/***************** Struct Definition **********************/
struct combs {
    int values[16];
};

/***************** IPs Instantiation **********************/
XGpio    GPIO;

/***************** Variable definitions *******************/
int sws;

/*Struct that contains all the possible SWS combinations*/
struct combs options = {0b0000,0b0001,0b0010,0b0011,0b0100,0b0101,0b0110,0b0111,0b1000,0b1001,0b1010,0b1011,0b1100,0b1101,0b1110,0b1111};

/***************** Function declaration *******************/
int CheckOptions(struct combs s, int sws);

/***************** Main **********************************/
int main(void){

	XGpio_Initialize(&GPIO, XPAR_GPIO_0_DEVICE_ID);

	while(1){
		sws = XGpio_DiscreteRead(&GPIO, 1);      // READ switches
		int result = CheckOptions(options, sws); // SEARCH for a match

		int result2 = result + 1;
		int result3 = result2 | 0b1010;

		XGpio_DiscreteWrite(&GPIO, 2, result3); // buffer a leds
	}
	return 0;
}

/***************** Function definition *******************/
int CheckOptions(struct combs s, int sws)
{
	int i;
	int matchedValue = -1; // default value, arbitrary

	for (i = 0; i < 16; ++i) {
		if (s.values[i] == sws) {
			matchedValue = s.values[i];
			break; // If there's a match we get out of the loop
		}
	}
	return matchedValue;
}
