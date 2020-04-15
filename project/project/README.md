# Lab 2: Blinky-Buzzy Toy

The Blinky-Buzzy Toy plays the Wii Theme Music. In order to play the song,
simply press the first switch on the bottom board (S1). This will trigger the
song to play and also change the LED lights from red to green. Red signifies
that no note/music is playing and green signifies that a note is currently playing.

In order to stop the song from playing you may press the bottom switch (S1) or
the following two top switches: S1 or S2. Once any of these buttons are
pressed, they will change the led light to red and play a note until the
buttons are let go.

The second switch on the bottom board (S2) will make the LED lights switch
mimicking a police car. To stop the LED lights from flickering, pressing the
top switch (S2) or (S1) on the top board will stop it and the LED light will only
light up GREEN, RED if the switches are still pressed.

Switch 3 (S3) on the top board will dim the GREED led light. To interrupt it, the
bottom switch (S1) must be pressed.

Switch 4 (S4) on the top board will display the numbers in binary from 0 -
3. When pressed for the first time, non of the led lights will show,
representing 00. If pressed again, the GREEN led light will show, representing
01, when pressed again, the RED led light will show, representing
10, once pressed again, both RED and GREEN led lights will light up
representing 11. Once pressed again, it will restart the count from 0.

This toy at minimum does the following:

* generate sounds,
* dynamically change the LEDs that are illuminated, both brighly and dimmly,
* implement a state machine to maintain the state of the toy,
* and use the four buttons on the expansion board (P2.0-3) to transition the state machine.

Running or resetting toy:

* to run the toy, you have to enter           > make load
* to clean the toy, you have to enter         > make clean
     	       	    	     		      > make tiddyUp
* to reset the toy, you have to enter         > mspdebug rf2500 "reset"
