# Simple Makefile for Verilog Simulation
SRC = src/and_or_not_gate.v
TB = tb/tb_and_or_not_gate.v
OUT = sim.vvp

run:
	iverilog -o $(OUT) $(TB) $(SRC)
	vvp $(OUT)

clean:
	rm -f $(OUT)