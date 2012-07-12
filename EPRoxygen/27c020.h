#include "device.h"

class x27C020: public Device
{
	public:
		x27C020();

		void power(void);
		void shutdown(void);
		void read(const char* filename);
		void write(const char* filename);
		void erase(void);
	private:

		static const uint8_t CTRLmask = 0b01100000;
		static const uint8_t VOLTmask = 0b10110011;
};

