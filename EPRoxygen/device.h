#ifndef _DEVICE_H_
#define _DEVICE_H_

#pragma once

class Device {
	public:
		virtual void read(const char* file) = 0;
		virtual void write(const char* file) = 0;
		virtual void erase(void) = 0;
};

#endif
