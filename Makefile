#This Makefile file builds my assignment 3 project
# @Name: Veer Waje
# @Class: CS3377.007
# @Date: 03/05/2024

COM = g++
OPT = -c
OBJS = main.o Truck.o SUV.o Car.o Automobile.o

main :  $(OBJS) makefile.depend
	$(COM) -o main $(OBJS)
main.o : 
	$(COM) $(OPT) main.cpp
Truck.o : 
	$(COM) $(OPT) Truck.cpp
SUV.o : 
	$(COM) $(OPT) SUV.cpp
Car.o : 
	$(COM) $(OPT) Car.cpp
Automobile.o : 
	$(COM) $(OPT) Automobile.cpp
clean : 
	rm -f *.o main makefile.depend *.zip
package : 
	zip assignment3_veer_waje.zip *.cpp *.h Makefile
makefile.depend : 
	$(COM) -MM *.cpp > makefile.depend
include makefile.depend	
