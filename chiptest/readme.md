Chiptest - The quick and dirty AVR tester.
==========================================

So, you made a new project board using an AVR microcontroller, and you want to
make sure it works before starting to develop your firmware. Debugging both
software and hardware at the same time is a pain.

Enters chiptest. This is a simple test program that makes sure the most basic
stuff is working.

Right now chiptest supports the following devices:
* ATTiny2313.
* ATmega128

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
* The LED will blink at FCPU/(8^3). This should be visible for all reasonable
clock speeds:
	- 20 MHz - 0.8s
	- 12 MHz - 1.4s
	- 1 MHz - 16.8s
* The character 'H' is sent to the serial port at the same speed. Baudrate is
9600 baud to be safe (it's more likely that a low baudrate can be generated
in a reasonably accurate way with any clock speed as a base).
