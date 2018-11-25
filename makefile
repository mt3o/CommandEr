compile:
	-mkdir build
	g++ -c ./src/commander.cpp -o ./build/commander.o -O3
	ar rvs ./build/libCMD.a ./build/*.o

install: compile
	sudo cp ./build/libCMD.a /usr/local/lib/libCMD.a
	sudo cp ./src/commander.hpp /usr/local/include/commander.h

uninstall:
	sudo rm -r /usr/local/include/commander.h
	sudo rm /usr/local/lib/libCMD.a

test:
	g++ ./src/*.cpp -o ./test
	./test
	rm ./test