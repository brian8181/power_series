#// License:    None
#// File Name:  ./Makefile
#// Build Date: Tue Nov 14 04:08:48 PM CST 2023
#// Version:    0.0.1

CXX = g++
CXXFLAGS = -Wall -std=c++17 -DDEBUG -g
APPNAME = power_series
BUILD = build
OBJ =  build
SRC = src

debug: all

all: power_series

power_series: power_series.o main.o math.o #@@PREREQUISTE@@
	 $(CXX) $(CXXFLAGS) $(BUILD)/power_series.o $(BUILD)/main.o $(BUILD)/math.o -o $(BUILD)/power_series #@@CLASS_NAME@@

power_series.o:
	$(CXX) $(CXXFLAGS) -c $(SRC)/power_series.cpp -o $(BUILD)/power_series.o
	
main.o:
	$(CXX) $(CXXFLAGS) -c $(SRC)/main.cpp -o $(BUILD)/main.o

math.o:
	$(CXX) $(CXXFLAGS) -c $(SRC)/math.cpp -o $(BUILD)/math.o

#AUTO_INSERT_POINT_DO_NOT_REMOVE#

clean:
	-rm -f $(OBJ)/*.
	-rm -f $(BUILD)/*
	