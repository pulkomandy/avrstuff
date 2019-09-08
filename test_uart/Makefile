MCU=atmega8
BAUD=57600
FCPU=16000000
PROG=avr109 -P /dev/ports/usb0 -b $(BAUD) -u

testusart.hex: testusart.bin
	avr-objcopy -j .text -j .data -O ihex testusart.bin testusart.hex

testusart.bin: usart.o main.o
	avr-gcc usart.o main.o -o testusart.bin -mmcu=$(MCU) -Os

main.o: testuart.c ../libs/usart/usart.h
	avr-gcc -c testuart.c -mmcu=$(MCU) -Os -o main.o

usart.o: ../libs/usart/usart.c ../libs/usart/usart.h
	avr-gcc -c ../libs/usart/usart.c -o usart.o -mmcu=$(MCU) -DBAUD=$(BAUD) -DF_CPU=$(FCPU) -Os

flash: testusart.hex
	avrdude -c $(PROG) -p $(MCU) -Uflash:w:testusart.hex

clean:
	rm *.bin *.o *.hex
