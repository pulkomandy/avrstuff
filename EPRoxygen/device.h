#ifndef _DEVICE_H_
#define _DEVICE_H_

#pragma once

#include <errno.h>
#include <stdio.h>
#include <stdint.h>
#include <unistd.h>

// FreeBSD
#include <sys/types.h>
#include <machine/cpufunc.h>
#include <machine/sysarch.h>


class Device {
	public:
		Device() 
		{};

		virtual ~Device() {
			shutdown();
		};

		void shutdown();
		virtual void power() = 0;

		virtual void read(const char* file) = 0;
		virtual void write(const char* file) = 0;
		virtual void erase(void) = 0;

		int setup(const int port_base) {
			port = port_base;
			if (i386_set_ioperm(port_base, 3, true) != 0)
			{
				perror("Unable to get access to parallel port");
				return errno;
			}
			shutdown();

			return 0;
		}
	protected:
		typedef enum {
			NONE =  0b0011, /* Nothing selected */
			NYBLE = 0b0100, /* Read low nyble */
				/* When 0, status reg shows D0.3
				 * When 1, status reg shows D4.7
				 */
			CTRL =  0b0101, /* Control reg. */
				/* b0: A16
				 * b1: /A17 (A17 is reversed !)
				 * b2: WE
				 * b3: A18
				 * b4: OE
				 * b5: VPP on pin 25 (0 = enable)
				 * b6: VPP on pin 24 (0 = enable)
				 * b7: CE
				 */
			VOLT =  0b0110, /* Power config reg. */
				/* b0: VPP on pin 1 (0 = enable)
				 * b1: VPP on pin 3 (0 = enable)
				 * b2: VCC on pin 32 (0 = enable)
				 * b3: Data reg. output enable (and green led)
				 * b4: VPP config
				 * b5: VPP config
				 * 		00 = 24V
				 * 		01 = ??
				 * 		10 = ??
				 * 		11 = 12V
				 * b6: Address reg. output enable
				 * b7: VCC enable (1 = power ON)
				 */
			ADR0 =  0b1101, /* Low address byte A0.7 */
			DATA =  0b1110, /* Data byte */
			ADR1 =  0b1111, /* High address byte A8.15 */
				/* A13 is reversed ! (also used as VCC pin in smaller packages)
				 */
		} Register;

		static const uint8_t A13 = 1 << 5;

		typedef enum {
			A16 = 1,
			A17 = 2,
			WE = 4,
			A18 = 8,
			OE = 16,
			VPP25 = 32,
			VPP24 = 64,
			CE = 128
		} CTRLbits;

		typedef enum {
			VPP1 = 1,
			VPP3 = 2,
			VCC32 = 4,
			DOE = 8,

			V24 = 0,
			V12 = 48,

			AOE = 64,
			VCC30 = 128
		} VOLTbits;

		static inline void write(const Register reg, const uint8_t val)
		{
			// To avoid glitches, first set the bits that select the register,
			// then enable the output. And disable the output when we are done
			// while not touching the selected reg. This is the only way to
			// avoid glitches (another reg may be selected long enough for
			// losing some bits)
			outb(port, val);
			usleep(1000);
			outb(port + 2, reg ^ 4);
			usleep(1000);
			outb(port + 2, reg);
			usleep(1000);
			outb(port + 2, reg ^ 4);
			usleep(1000);
		}

		static inline uint8_t read()
		{
			outb(port+2, NYBLE ^ 4); 
			usleep(1000);
			uint8_t byte = inb(port + 1) & 0xF0;

			outb(port+2, NYBLE); 
			usleep(1000);
			byte |= inb(port + 1) >> 4;
			outb(port+2, NYBLE ^ 4); 
			usleep(1000);
			return byte ^ 0x88;
		}

		static int port;
	private:
};

#endif
