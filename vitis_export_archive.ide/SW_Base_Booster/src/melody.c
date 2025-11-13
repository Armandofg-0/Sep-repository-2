// melody.c
#include "melody.h"

// El presente codigo no es de nuestra autoria y las canciones estan referenciadas al final de este archivo


// La estructura de los arreglos son: (nota, duracion). La duracion sigue la convencion:
// 1: redonda (whole), 2: blanca (half), 4: negra (quarter), 8: corchea (eighth), 16: semicorchea (sixteenth)
// Si el valor de duración es negativo (ej. -4) se interpreta como nota puntuada (dotted): es decir, la duración real = duración_base * 1.5.
static const int mii_notes[] = {

		  // Mii Channel theme
		  // Score available at https://musescore.com/user/16403456/scores/4984153
		  // Uploaded by Catalina Andrade

		  NOTE_FS4,8, REST,8, NOTE_A4,8, NOTE_CS5,8, REST,8,NOTE_A4,8, REST,8, NOTE_FS4,8, //1
		  NOTE_D4,8, NOTE_D4,8, NOTE_D4,8, REST,8, REST,4, REST,8, NOTE_CS4,8,
		  NOTE_D4,8, NOTE_FS4,8, NOTE_A4,8, NOTE_CS5,8, REST,8, NOTE_A4,8, REST,8, NOTE_F4,8,
		  NOTE_E5,-4, NOTE_DS5,8, NOTE_D5,8, REST,8, REST,4,

		  NOTE_GS4,8, REST,8, NOTE_CS5,8, NOTE_FS4,8, REST,8,NOTE_CS5,8, REST,8, NOTE_GS4,8, //5
		  REST,8, NOTE_CS5,8, NOTE_G4,8, NOTE_FS4,8, REST,8, NOTE_E4,8, REST,8,
		  NOTE_E4,8, NOTE_E4,8, NOTE_E4,8, REST,8, REST,4, NOTE_E4,8, NOTE_E4,8,
		  NOTE_E4,8, REST,8, REST,4, NOTE_DS4,8, NOTE_D4,8,

		  NOTE_CS4,8, REST,8, NOTE_A4,8, NOTE_CS5,8, REST,8,NOTE_A4,8, REST,8, NOTE_FS4,8, //9
		  NOTE_D4,8, NOTE_D4,8, NOTE_D4,8, REST,8, NOTE_E5,8, NOTE_E5,8, NOTE_E5,8, REST,8,
		  REST,8, NOTE_FS4,8, NOTE_A4,8, NOTE_CS5,8, REST,8, NOTE_A4,8, REST,8, NOTE_F4,8,
		  NOTE_E5,2, NOTE_D5,8, REST,8, REST,4,

		  NOTE_B4,8, NOTE_G4,8, NOTE_D4,8, NOTE_CS4,4, NOTE_B4,8, NOTE_G4,8, NOTE_CS4,8, //13
		  NOTE_A4,8, NOTE_FS4,8, NOTE_C4,8, NOTE_B3,4, NOTE_F4,8, NOTE_D4,8, NOTE_B3,8,
		  NOTE_E4,8, NOTE_E4,8, NOTE_E4,8, REST,4, REST,4, NOTE_AS4,4,
		  NOTE_CS5,8, NOTE_D5,8, NOTE_FS5,8, NOTE_A5,8, REST,8, REST,4,

		  REST,2, NOTE_A3,4, NOTE_AS3,4, //17
		  NOTE_A3,-4, NOTE_A3,8, NOTE_A3,2,
		  REST,4, NOTE_A3,8, NOTE_AS3,8, NOTE_A3,8, NOTE_F4,4, NOTE_C4,8,
		  NOTE_A3,-4, NOTE_A3,8, NOTE_A3,2,

		  REST,2, NOTE_B3,4, NOTE_C4,4, //21
		  NOTE_CS4,-4, NOTE_C4,8, NOTE_CS4,2,
		  REST,4, NOTE_CS4,8, NOTE_C4,8, NOTE_CS4,8, NOTE_GS4,4, NOTE_DS4,8,
		  NOTE_CS4,-4, NOTE_DS4,8, NOTE_B3,1,

		  NOTE_E4,4, NOTE_E4,4, NOTE_E4,4, REST,8,//25

		  //repeats 1-25

		  NOTE_FS4,8, REST,8, NOTE_A4,8, NOTE_CS5,8, REST,8,NOTE_A4,8, REST,8, NOTE_FS4,8, //1
		  NOTE_D4,8, NOTE_D4,8, NOTE_D4,8, REST,8, REST,4, REST,8, NOTE_CS4,8,
		  NOTE_D4,8, NOTE_FS4,8, NOTE_A4,8, NOTE_CS5,8, REST,8, NOTE_A4,8, REST,8, NOTE_F4,8,
		  NOTE_E5,-4, NOTE_DS5,8, NOTE_D5,8, REST,8, REST,4,

		  NOTE_GS4,8, REST,8, NOTE_CS5,8, NOTE_FS4,8, REST,8,NOTE_CS5,8, REST,8, NOTE_GS4,8, //5
		  REST,8, NOTE_CS5,8, NOTE_G4,8, NOTE_FS4,8, REST,8, NOTE_E4,8, REST,8,
		  NOTE_E4,8, NOTE_E4,8, NOTE_E4,8, REST,8, REST,4, NOTE_E4,8, NOTE_E4,8,
		  NOTE_E4,8, REST,8, REST,4, NOTE_DS4,8, NOTE_D4,8,

		  NOTE_CS4,8, REST,8, NOTE_A4,8, NOTE_CS5,8, REST,8,NOTE_A4,8, REST,8, NOTE_FS4,8, //9
		  NOTE_D4,8, NOTE_D4,8, NOTE_D4,8, REST,8, NOTE_E5,8, NOTE_E5,8, NOTE_E5,8, REST,8,
		  REST,8, NOTE_FS4,8, NOTE_A4,8, NOTE_CS5,8, REST,8, NOTE_A4,8, REST,8, NOTE_F4,8,
		  NOTE_E5,2, NOTE_D5,8, REST,8, REST,4,

		  NOTE_B4,8, NOTE_G4,8, NOTE_D4,8, NOTE_CS4,4, NOTE_B4,8, NOTE_G4,8, NOTE_CS4,8, //13
		  NOTE_A4,8, NOTE_FS4,8, NOTE_C4,8, NOTE_B3,4, NOTE_F4,8, NOTE_D4,8, NOTE_B3,8,
		  NOTE_E4,8, NOTE_E4,8, NOTE_E4,8, REST,4, REST,4, NOTE_AS4,4,
		  NOTE_CS5,8, NOTE_D5,8, NOTE_FS5,8, NOTE_A5,8, REST,8, REST,4,

		  REST,2, NOTE_A3,4, NOTE_AS3,4, //17
		  NOTE_A3,-4, NOTE_A3,8, NOTE_A3,2,
		  REST,4, NOTE_A3,8, NOTE_AS3,8, NOTE_A3,8, NOTE_F4,4, NOTE_C4,8,
		  NOTE_A3,-4, NOTE_A3,8, NOTE_A3,2,

		  REST,2, NOTE_B3,4, NOTE_C4,4, //21
		  NOTE_CS4,-4, NOTE_C4,8, NOTE_CS4,2,
		  REST,4, NOTE_CS4,8, NOTE_C4,8, NOTE_CS4,8, NOTE_GS4,4, NOTE_DS4,8,
		  NOTE_CS4,-4, NOTE_DS4,8, NOTE_B3,1,

		  NOTE_E4,4, NOTE_E4,4, NOTE_E4,4, REST,8,//25

		  //finishes with 26
		  //NOTE_FS4,8, REST,8, NOTE_A4,8, NOTE_CS5,8, REST,8, NOTE_A4,8, REST,8, NOTE_FS4,8

		};

#define MII_LENGTH (sizeof(mii_notes) / sizeof(mii_notes[0]) / 2)

const MelodyData mii_melody = {
    .notes = mii_notes,
    .length = MII_LENGTH,
    .tempo = 114,
    .name = "Mii Channel Theme"
};

static const int song_of_storms_notes[] = {
		  // Song of storms - The Legend of Zelda Ocarina of Time.
		  // Score available at https://musescore.com/user/4957541/scores/1545401

		  NOTE_D4,4, NOTE_A4,4, NOTE_A4,4,
		  REST,8, NOTE_E4,8, NOTE_B4,2,
		  NOTE_F4,4, NOTE_C5,4, NOTE_C5,4,
		  REST,8, NOTE_E4,8, NOTE_B4,2,
		  NOTE_D4,4, NOTE_A4,4, NOTE_A4,4,
		  REST,8, NOTE_E4,8, NOTE_B4,2,
		  NOTE_F4,4, NOTE_C5,4, NOTE_C5,4,
		  REST,8, NOTE_E4,8, NOTE_B4,2,
		  NOTE_D4,8, NOTE_F4,8, NOTE_D5,2,

		  NOTE_D4,8, NOTE_F4,8, NOTE_D5,2,
		  NOTE_E5,-4, NOTE_F5,8, NOTE_E5,8, NOTE_E5,8,
		  NOTE_E5,8, NOTE_C5,8, NOTE_A4,2,
		  NOTE_A4,4, NOTE_D4,4, NOTE_F4,8, NOTE_G4,8,
		  NOTE_A4,-2,
		  NOTE_A4,4, NOTE_D4,4, NOTE_F4,8, NOTE_G4,8,
		  NOTE_E4,-2,
		  NOTE_D4,8, NOTE_F4,8, NOTE_D5,2,
		  NOTE_D4,8, NOTE_F4,8, NOTE_D5,2,

		  NOTE_E5,-4, NOTE_F5,8, NOTE_E5,8, NOTE_E5,8,
		  NOTE_E5,8, NOTE_C5,8, NOTE_A4,2,
		  NOTE_A4,4, NOTE_D4,4, NOTE_F4,8, NOTE_G4,8,
		  NOTE_A4,2, NOTE_A4,4,
		  NOTE_D4,1,
};

#define SONG_OF_STORMS_LENGTH (sizeof(song_of_storms_notes) / sizeof(song_of_storms_notes[0]) / 2)

const MelodyData song_of_storms_melody = {
    .notes = song_of_storms_notes,
    .length = SONG_OF_STORMS_LENGTH,
    .tempo = 108,
    .name = "Song of Storms"
};

static const int issd_notes[] = {
    // International Superstar Soccer Deluxe Theme

   NOTE_E4, 8, NOTE_E4, 8, NOTE_D4, 8, NOTE_DS4, 4,
   NOTE_D4, 8,  NOTE_D4, 8, NOTE_DS4, 8, NOTE_D4, 4, REST, 8,
   NOTE_CS4, 8, NOTE_CS4, 8, NOTE_C4, 8,  NOTE_CS4, 4,
   NOTE_CS4, 8, NOTE_CS4, 8, NOTE_C4, 8, NOTE_CS4, 8, NOTE_D4, 8,

   NOTE_E4, 8, NOTE_E4, 8, NOTE_D4, 8, NOTE_DS4, 4,
   NOTE_D4, 8,  NOTE_D4, 8, NOTE_DS4, 8, NOTE_D4, 4, REST, 8,
   NOTE_CS4, 8, NOTE_CS4, 8, NOTE_C4, 8,  NOTE_CS4, 4,
   NOTE_CS4, 8, NOTE_CS4, 8, NOTE_C4, 8, NOTE_CS4, 8, NOTE_D4, 8,

   NOTE_E4, 8, NOTE_E4, 8, NOTE_D4, 8, NOTE_DS4, 4,
   NOTE_D4, 8,  NOTE_D4, 8, NOTE_DS4, 8, NOTE_D4, 4, REST, 8,
   NOTE_CS4, 8, NOTE_CS4, 8, NOTE_C4, 8,  NOTE_CS4, 4,
   NOTE_CS4, 8, NOTE_CS4, 8, NOTE_C4, 8, NOTE_CS4, 8, NOTE_D4, 8,

   NOTE_E4, 8, NOTE_E4, 8, NOTE_D4, 8, NOTE_DS4, 4,
   NOTE_D4, 8,  NOTE_D4, 8, NOTE_DS4, 8, NOTE_D4, 4, REST, 8,
   NOTE_CS4, 8, NOTE_CS4, 8, NOTE_C4, 8,  NOTE_CS4, 4,
   NOTE_CS4, 8, NOTE_CS4, 8, NOTE_C4, 8, NOTE_CS4, 8, NOTE_D4, 8,

   NOTE_GS4, 4, NOTE_G4, 8, NOTE_DS4, 8, NOTE_F4, 8, NOTE_D4, 8, NOTE_DS4, 8, NOTE_E4, 8, REST, 8,
   NOTE_D4, 8, NOTE_DS4, 8, NOTE_E4, 8, NOTE_E4, 8,
   NOTE_D4, 8, NOTE_DS4, 8, NOTE_E4, 8, REST, 8,
   NOTE_GS4, 8, NOTE_A4, 8, NOTE_FS4, 8, NOTE_G4, 8, NOTE_E4, 8, NOTE_F4, 8, NOTE_FS4, 8,

   NOTE_GS4, 4, NOTE_G4, 8, NOTE_DS4, 8, NOTE_F4, 8, NOTE_D4, 8, NOTE_DS4, 8, NOTE_E4, 8,
   NOTE_D4, 8, NOTE_DS4, 8, NOTE_E4, 8, NOTE_E4, 8,
   NOTE_D4, 8, NOTE_DS4, 8, NOTE_E4, 8, REST, 8,
   NOTE_GS4, 8, NOTE_A4, 8, NOTE_FS4, 8, NOTE_G4, 8, NOTE_E4, 8, NOTE_F4, 8, NOTE_FS4, 8, REST, 4


};

#define ISSD_LENGTH (sizeof(issd_notes) / sizeof(issd_notes[0]) / 2)

const MelodyData issd_melody = {
    .notes = issd_notes,
    .length = ISSD_LENGTH,
    .tempo = 120, // Set based on the theme's tempo
    .name = "International Superstar Soccer Deluxe Theme"
};


static const int keyboard_cat_notes[] = {

		  // Keyboard cat
		  // Score available at https://musescore.com/user/142788/scores/147371

		    REST,1,
		    REST,1,
		    NOTE_C4,4, NOTE_E4,4, NOTE_G4,4, NOTE_E4,4,
		    NOTE_C4,4, NOTE_E4,8, NOTE_G4,-4, NOTE_E4,4,
		    NOTE_A3,4, NOTE_C4,4, NOTE_E4,4, NOTE_C4,4,
		    NOTE_A3,4, NOTE_C4,8, NOTE_E4,-4, NOTE_C4,4,
		    NOTE_G3,4, NOTE_B3,4, NOTE_D4,4, NOTE_B3,4,
		    NOTE_G3,4, NOTE_B3,8, NOTE_D4,-4, NOTE_B3,4,

		    NOTE_G3,4, NOTE_G3,8, NOTE_G3,-4, NOTE_G3,8, NOTE_G3,4,
		    NOTE_G3,4, NOTE_G3,4, NOTE_G3,8, NOTE_G3,4,
		    NOTE_C4,4, NOTE_E4,4, NOTE_G4,4, NOTE_E4,4,
		    NOTE_C4,4, NOTE_E4,8, NOTE_G4,-4, NOTE_E4,4,
		    NOTE_A3,4, NOTE_C4,4, NOTE_E4,4, NOTE_C4,4,
		    NOTE_A3,4, NOTE_C4,8, NOTE_E4,-4, NOTE_C4,4,
		    NOTE_G3,4, NOTE_B3,4, NOTE_D4,4, NOTE_B3,4,
		    NOTE_G3,4, NOTE_B3,8, NOTE_D4,-4, NOTE_B3,4,

		    NOTE_G3,-1,

		};

#define KEYBOARD_CAT_LENGTH (sizeof(keyboard_cat_notes) / sizeof(keyboard_cat_notes[0]) / 2)

const MelodyData keyboard_cat_melody = {
    .notes = keyboard_cat_notes,
    .length = KEYBOARD_CAT_LENGTH,
    .tempo = 160,
    .name = "KeyboardCat Theme"
};

static const int pulo_da_gaita_notes[] = {

		  // Pulo da gaita - Auto da Compadecida
		  // Score available at https://musescore.com/user/196039/scores/250206

		  NOTE_C5,4, NOTE_G4,8, NOTE_AS4,4, NOTE_A4,8,
		  NOTE_G4,16, NOTE_C4,8, NOTE_C4,16, NOTE_G4,16, NOTE_G4,8, NOTE_G4,16,
		  NOTE_C5,4, NOTE_G4,8, NOTE_AS4,4, NOTE_A4,8,
		  NOTE_G4,2,

		  NOTE_C5,4, NOTE_G4,8, NOTE_AS4,4, NOTE_A4,8,
		  NOTE_G4,16, NOTE_C4,8, NOTE_C4,16, NOTE_G4,16, NOTE_G4,8, NOTE_G4,16,
		  NOTE_F4,8, NOTE_E4,8, NOTE_D4,8, NOTE_C4,8,
		  NOTE_C4,2,

		  NOTE_C5,4, NOTE_G4,8, NOTE_AS4,4, NOTE_A4,8,
		  NOTE_G4,16, NOTE_C4,8, NOTE_C4,16, NOTE_G4,16, NOTE_G4,8, NOTE_G4,16,
		  NOTE_C5,4, NOTE_G4,8, NOTE_AS4,4, NOTE_A4,8,
		  NOTE_G4,2,

		  NOTE_C5,4, NOTE_G4,8, NOTE_AS4,4, NOTE_A4,8,
		  NOTE_G4,16, NOTE_C4,8, NOTE_C4,16, NOTE_G4,16, NOTE_G4,8, NOTE_G4,16,
		  NOTE_F4,8, NOTE_E4,8, NOTE_D4,8, NOTE_C4,8,
		  NOTE_C4,16, NOTE_D5,8, NOTE_D5,16, NOTE_D5,16, NOTE_D5,8, NOTE_D5,16,

		  NOTE_D5,16, NOTE_D5,8, NOTE_D5,16, NOTE_C5,8, NOTE_E5,-8,
		  NOTE_C5,8, NOTE_C5,16, NOTE_E5,16, NOTE_E5,8, NOTE_C5,16,
		  NOTE_F5,8, NOTE_D5,8, NOTE_D5,8, NOTE_E5,-8,
		  NOTE_C5,8, NOTE_D5,16, NOTE_E5,16, NOTE_D5,8, NOTE_C5,16,

		  NOTE_F5,8, NOTE_F5,8, NOTE_A5,8, NOTE_G5,-8,//21
		  NOTE_G5,8, NOTE_C5,16, NOTE_C5,16, NOTE_C5,8, NOTE_C5,16,
		  NOTE_F5,-8, NOTE_E5,16, NOTE_D5,8, NOTE_C5,4,
		  NOTE_C5,16, NOTE_C5,16, NOTE_C5,16, NOTE_C5,16,

		  NOTE_F5,8, NOTE_F5,16, NOTE_A5,8, NOTE_G5,-8,//25
		  NOTE_G5,8, NOTE_C5,16, NOTE_C5,16, NOTE_C5,8, NOTE_C5,16,
		  NOTE_F5,16, NOTE_E5,8, NOTE_D5,16, NOTE_C5,8, NOTE_E5,-8,
		  NOTE_C5,8, NOTE_D5,16, NOTE_E5,16, NOTE_D5,8, NOTE_C5,16,

		  NOTE_F5,8, NOTE_F5,16, NOTE_A5,8, NOTE_G5,-8,//29
		  NOTE_G5,8, NOTE_C5,16, NOTE_C5,16, NOTE_C5,8, NOTE_C5,16,
		  NOTE_F5,8, NOTE_E5,16, NOTE_D5,8, NOTE_C5,8,
		  NOTE_C5,4, NOTE_G4,8, NOTE_AS4,4, NOTE_A4,8,

		  NOTE_G4,16, NOTE_C4,8, NOTE_C4,16, NOTE_G4,16, NOTE_G4,8, NOTE_G4,16,
		  NOTE_C5,4, NOTE_G4,8, NOTE_AS4,4, NOTE_A4,8,
		  NOTE_G4,2,
		  NOTE_C5,4, NOTE_G4,8, NOTE_AS4,4, NOTE_A4,8,

		  NOTE_G4,16, NOTE_C4,8, NOTE_C4,16, NOTE_G4,16, NOTE_G4,8, NOTE_G4,16,
		  NOTE_F4,8, NOTE_E4,8, NOTE_D4,8, NOTE_C4,-2,
		  NOTE_C5,4, NOTE_G4,8, NOTE_AS4,4, NOTE_A4,8,

		  NOTE_G4,16, NOTE_C4,8, NOTE_C4,16, NOTE_G4,16, NOTE_G4,8, NOTE_G4,16,
		  NOTE_C5,4, NOTE_G4,8, NOTE_AS4,4, NOTE_A4,8,
		  NOTE_G4,2,
		  NOTE_C5,4, NOTE_G4,8, NOTE_AS4,4, NOTE_A4,8,

		  NOTE_G4,16, NOTE_C4,8, NOTE_C4,16, NOTE_G4,16, NOTE_G4,8, NOTE_G4,16,
		  NOTE_F4,8, NOTE_E4,8, NOTE_D4,8, NOTE_C4,-2,
		  NOTE_C4,16, NOTE_C4,8, NOTE_C4,16, NOTE_E4,16, NOTE_E4,8, NOTE_E4,16,
		  NOTE_F4,16, NOTE_F4,8, NOTE_F4,16, NOTE_FS4,16, NOTE_FS4,8, NOTE_FS4,16,

		  NOTE_G4,8, REST,8, NOTE_AS4,8, NOTE_C5,1,

		};

#define PULO_DA_GAITA_LENGTH (sizeof(pulo_da_gaita_notes) / sizeof(pulo_da_gaita_notes[0]) / 2)

const MelodyData pulo_da_gaita_melody = {
    .notes = pulo_da_gaita_notes,
    .length = PULO_DA_GAITA_LENGTH,
    .tempo = 100,
    .name = "Pulo Da Gaita"
};

// Array of available melodies
const MelodyData *available_melodies[] = {
    &mii_melody,
    &song_of_storms_melody,
	&issd_melody,
	&keyboard_cat_melody,
	&pulo_da_gaita_melody,
};

const int NUM_MELODIES = sizeof(available_melodies) / sizeof(available_melodies[0]);

// Initialize the melody array

void initialize_melody(const MelodyData *melodyData, Note *melodyArray, int *melodyLength) {
    int tempo = melodyData->tempo;
    const int *notes = melodyData->notes;
    int length = melodyData->length;

    // Calculate whole note duration in milliseconds
    uint32_t whole_note_duration = (60000 * 4) / tempo;

    for(int i = 0; i < length * 2; i += 2) {
        int note = notes[i];
        int divider = notes[i + 1];
        uint32_t duration_ms = 0;

        if(divider > 0){
            // Standard note
            duration_ms = whole_note_duration / divider;
        }
        else if(divider < 0){
            // Dotted note
            duration_ms = (whole_note_duration / -divider) * 1.5;
        }

        melodyArray[i / 2].frequency = note;
        melodyArray[i / 2].duration = duration_ms;
    }

    *melodyLength = length;
}


