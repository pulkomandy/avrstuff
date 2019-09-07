Blinkled
========

Well, the name says it all. This just blinks a led every second (assuming 16MHz
clock). This is a generic project I use to check my boards are alive. As a
result, I'll try to make the code easily configurable. Ideally, you'd just set
some variables in the makefile, type "make flash", and get going.

The LED is expected to be on PD6. Why? Because all boards I had to use so far
had a led there or could easily have one. But if you happen to have a LED
somewhere else, it's super easy to change which pin is used, right?

All other pins are kept as input. I assume this way nothing should be damaged,
no matter where this code is run.
