#include "device.h"

class AT29C040: public Device
{
	public:
		void read(const char* filename);
		void write(const char* filename);
		void erase(void);
};

