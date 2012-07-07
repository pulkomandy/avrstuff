#ifndef _DEVICE_H_
#define _DEVICE_H_

#pragma once

#include <errno.h>
#include <stdio.h>
#include <stdint.h>

// FreeBSD
#include <sys/types.h>
#include <machine/cpufunc.h>
#include <machine/sysarch.h>


class Device {
	public:
		Device() 
		{};

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

		virtual ~Device() {};
	
	protected:
		typedef enum {
			NONE =  0b0101, /* Nothing selected */
			NYBLE = 0b0010, /* Read low nyble */
				/* When 0, status reg shows D0.3
				 * When 1, status reg shows D4.7
				 */
			CTRL =  0b0011, /* Control reg. */
				/* b0: A16
				 * b1: /A17
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
			ADR0 =  0b1011, /* Low address byte A0.7 */
			DATA =  0b1110, /* Data byte */
			ADR1 =  0b1111, /* High address byte A8.15 */
		} Register;

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
			// The register latches the data only when another register gets
			// selected. If this is a problem, select the NONE reg after
			// writing !
			outb(port + 2, reg);
			outb(port, val);
		}

		static inline uint8_t read()
		{
			uint8_t byte = (inb(port + 1) ^ 0x80) & 0xF0;

			outb(port+2, NYBLE); 
			byte |= (inb(port + 1) ^ 0x80) >> 4;
			return byte;
		}

	private:
		static int port;
};

#endif
