
MAKEFLAGS += -s

.PHONY: all

all:
	rm -rf build
	mkdir build
	iverilog -s add_tb add_tb.sv -g2012 -o build/add_tb
	build/add_tb
