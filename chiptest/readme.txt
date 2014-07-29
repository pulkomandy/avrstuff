Chiptest - The quick and dirty AVR tester.
==========================================

So, you made a new project board using an AVR microcontroller, and you want to
make sure it works before starting to develop your firmware. Debugging both
software and hardware at the same time is a pain.

Enters chiptest. This is a simple test program that makes sure the most basic
stuff is working.

Right now chiptest supports the following devices:
* ATTiny2313.

It tests the following features:
* USART
* Timers
* One GPIO

How to use it
=============

* Adjust the pinout at the top of main.c and the CPU clock in the makefile to
your needs
* Plug your usbasp and board
* make flash

How to tell if it works
=======================

If everything goes well:
* The LED will blink at a well-known (but currently undocumented! sorry!) rate
* The character 'H' is sent to the serial port in a loop.
