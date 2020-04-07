# Lab 2: Blinky-Buzzy Toy

The Blinky-Buzzy Toy plays the Wii Theme Music. In order to play the song,
simply press the first switch on the bottom board (S1). This will trigger the
song to play and also change the LED lights from red to green depending on the
beat of the song.

In order to stop the song from playing you may press any of the switches on
the top board to stop it.

The second switch on the bottom board (S2) will make the LED lights switch
mimicking a police car. To stop the LED lights from flickering, pressing the
top switch (S2) on the top board will stop it and the LED light will only
light up GREEN.

The switches on the top board (S1, S2, S3, S4) will play a note whenever
pushed. The note is the same for a certain switch. 

This toy at minimum does the following:

* generate sounds,
* dynamically change the LEDs that are illuminated, both brighly and dimmly,
* implement a state machine to maintain the state of the toy,
* and use the four buttons on the expansion board (P2.0-3) to transition the state machine.

Running or resetting toy:

* to run the toy, you have to enter           > make load
* to clean the toy, you have to enter         > make clean
* to reset the toy, you have to enter         > mspdebug rf2500 "reset"
