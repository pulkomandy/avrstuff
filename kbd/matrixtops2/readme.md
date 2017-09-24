Keyboard matrix to PS/2 adapter
===============================

Well, essentially this is the controller for a PS/2 keyboard. It scans the key
matrix and emits keycodes to a PS/2 host using the USART.

It can also be configured to use the USART in asynchronous mode and send ASCII
characters, in which case it becomes the controller for an ASCII+RS232 keyboard.
