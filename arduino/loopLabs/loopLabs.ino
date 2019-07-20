/* LoopLabs Midi device code. Based on code by Leif Oddson:
   https://forum.pjrc.com/threads/45376

   Written by Jimmie Rodgers
   7/20/19

   Released under public domain.
*/


//************LIBRARIES USED**************
// include the ResponsiveAnalogRead library for analog smoothing
#include <ResponsiveAnalogRead.h>
// include the Bounce library for 'de-bouncing' switches -- removing electrical chatter as contacts settle
#include <Bounce2.h> 
// include the Adafruit Neopixel library
#include <Adafruit_NeoPixel.h>
// include the rtmidi library
#include <MIDI.h>
MIDI_CREATE_DEFAULT_INSTANCE();

// ******CONSTANT VALUES******** 
// customize code behaviour here!
const int channel = 1; // MIDI channel
const int A_PINS = 4; // number of Analog PINS
const int D_PINS = 4; // number of Digital PINS
const int ON_VELOCITY = 99; // note-one velocity sent from buttons (should be 65 to  127)

// define the pins you want to use and the CC ID numbers on which to send them..
const int ANALOG_PINS[A_PINS] = {A2,A3,A4,A5};
const int CCID[A_PINS] = {21,22,23,24};

// define the pins and notes for digital events
const int DIGITAL_PINS[D_PINS] = {3,4,5,6};
const int note[D_PINS] = {60,61,62,63};
const int BOUNCE_TIME = 7; // 5 ms is usually sufficient
const boolean toggled = true;

// define the pins and pixels for the Neopixels
#define NEOPIN 2
#define NUMPIXELS 5
Adafruit_NeoPixel pixels(NUMPIXELS, NEOPIN, NEO_GRB + NEO_KHZ800);

// define colors
#define GREEN 100,0,0
#define RED 0,100,0
#define BLUE 0,0,100

//******VARIABLES***********
// a data array and a lagged copy to tell when MIDI changes are required
byte data[A_PINS];
byte dataLag[A_PINS]; // when lag and new are not the same then update MIDI CC value


//************INITIALIZE LIBRARY OBJECTS**************
// initialize the ReponsiveAnalogRead objects
ResponsiveAnalogRead analog[]{
  {ANALOG_PINS[0],true},
  {ANALOG_PINS[1],true},
  {ANALOG_PINS[2],true},
  {ANALOG_PINS[3],true}
}; 

// initialize the bounce objects 
Bounce digital[] =   {
  Bounce(DIGITAL_PINS[0], BOUNCE_TIME), 
  Bounce(DIGITAL_PINS[1], BOUNCE_TIME),
  Bounce(DIGITAL_PINS[2], BOUNCE_TIME),
  Bounce(DIGITAL_PINS[3], BOUNCE_TIME)
}; 

//************SETUP**************
void setup() {
// loop to configure input pins and internal pullup resisters for digital section
  for (int i=0;i<D_PINS;i++){
    pinMode(DIGITAL_PINS[i], INPUT_PULLUP);
  }
  for (int i=0;i<A_PINS;i++){
    pinMode(ANALOG_PINS[i], INPUT);
  }
  pixels.begin(); // INITIALIZE NeoPixel strip object (REQUIRED)
  pixels.clear(); // Set all pixel colors to 'off'
  pixels.setPixelColor(4, pixels.Color(GREEN)); // Sets the power status led
  pixels.show();   // Send the updated pixel colors to the hardware.

  // Connect the handleNoteOn function to the library,
  // so it is called upon reception of a NoteOn.
  usbMIDI.setHandleNoteOn(handleNoteOn);  // Put only the name of the function

  // Do the same for NoteOffs
  usbMIDI.setHandleNoteOff(handleNoteOff);
}

//************LOOP**************
void loop() {
  getAnalogData();
  getDigitalData();
  while (usbMIDI.read()) {
     // controllers must call .read() to keep the queue clear even if they are not responding to MIDI
  }
}

void handleNoteOn(byte channel, byte pitch, byte velocity)
{
    // midi noteOn placeholder
    // currently ignored, but will be used to display on the embeded NeoPixels
}

void handleNoteOff(byte channel, byte pitch, byte velocity)
{
    // midi noteOff placeholder
    // currently ignored, but will be used to display on the embeded NeoPixels
}

//************ANALOG SECTION**************
// reads all analog pins and sends only on update
void getAnalogData(){  
  for (int i=0;i<A_PINS;i++){
    // update the ResponsiveAnalogRead object every loop
    analog[i].update(); 
    // if the repsonsive value has change, print out 'changed'
    if(analog[i].hasChanged()) {
      data[i] = analog[i].getValue()>>3;
      if (data[i] != dataLag[i]){
        dataLag[i] = data[i];
        usbMIDI.sendControlChange(CCID[i], data[i], channel);
      }
    }
  }
}

//************DIGITAL SECTION**************
// reads all digital pins and sends only on update
void getDigitalData(){
  for (int i=0;i<D_PINS;i++){
  digital[i].update();
    if (digital[i].fallingEdge()) {
      usbMIDI.sendNoteOn(note[i], ON_VELOCITY, channel);  
    }
    // Note Off messages when each button is released
    if (digital[i].risingEdge()) {
      usbMIDI.sendNoteOff(note[i], 0, channel);  
    }
  }
}
