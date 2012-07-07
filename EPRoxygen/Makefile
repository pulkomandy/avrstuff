eproxygen: main.o at29c040.o
	g++ -Wall -g -O3 -fno-rtti -fno-exceptions $^ -o $@

%.o: %.cpp
	g++ -Wall -g -save-temps -O3 -fno-rtti -fno-exceptions -c $^ -o $@
