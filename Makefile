
MAKEFLAGS += -s

.PHONY: all

t := test
b := build

all:
	clear

	rm -rf $(b)
	mkdir $(b)

	iverilog -s add_tb $(t)/add_tb.sv -g2012 -o $(b)/add_tb
	$(b)/add_tb

	iverilog -s impl_tb $(t)/impl_tb.sv -g2012 -o $(b)/impl_tb
	$(b)/impl_tb

	iverilog -s not_impl_tb $(t)/not_impl_tb.sv -g2012 -o $(b)/not_impl_tb
	$(b)/not_impl_tb

	iverilog -s pierce_tb $(t)/pierce_tb.sv -g2012 -o $(b)/pierce_tb
	$(b)/pierce_tb

	iverilog -s sheffer_tb $(t)/sheffer_tb.sv -g2012 -o $(b)/sheffer_tb
	$(b)/sheffer_tb
