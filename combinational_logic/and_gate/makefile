TOP = and_gate

SRC = src/$(TOP).v
TB  = tb/$(TOP)_tb.v

OUT = sim/sim.out
VCD = sim/wave.vcd

all: run

sim:
	if not exist sim mkdir sim

compile: sim
	iverilog -g2012 -o $(OUT) $(SRC) $(TB)

run: compile
	vvp $(OUT)

wave:
	gtkwave $(VCD)

clean:
	if exist sim del /Q sim\*