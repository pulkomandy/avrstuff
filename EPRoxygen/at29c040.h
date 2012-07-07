#include "device.h"

class AT29C040: public Device
{
	public:
		AT29C040();

		void power(void);
		void shutdown(void);
		void read(const char* filename);
		void write(const char* filename);
		void erase(void);
	private:
		bool checkId(void);

		// Write a byte to a 16-bit address (bits 16 17 18 are 0)
		inline void wr16(uint16_t addr, uint8_t val)
		{
			Device::write(ADR0, addr);
			Device::write(ADR1, addr >> 8);

			Device::write(CTRL, OE | CTRLmask); 

			Device::write(DATA, val);

			Device::write(CTRL, WE | OE | CTRLmask);
		}

		static const uint8_t CTRLmask = 0b01100000;
		static const uint8_t VOLTmask = 0b10110011;
};

