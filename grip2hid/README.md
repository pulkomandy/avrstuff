Gravis GrIP to HID adapter
==========================

GRiP is (or was?) a custom protocol designed by Gravis to allow their gamepad
to use more than 4 buttons on the PC joystick port. The Gravis Gamepad Pro is
one of the best PC gamepads ever manufactured, and the USB version is not that
common (and also looks less nice with the black plastic).

This interface allows to use these gamepads on an USB port, for modern machines
where the traditional gameport is not available. It supports up to 4 gamepads
(2 gameports, each allowing to use 2 gamepads thanks to Gravis chaining system).

It is powered by an AT90USB AVR microcontroller, because these implement USB in
hardware and have easily usable external interupts (PCINT) making it much easier
to implement the protocol (this helps because the gamepad is the master and
drives the clock).

[Further reading on GrIP](http://pulkomandy.tk/_/_Electronique/_Gravis%20Interface%20Protocol)
