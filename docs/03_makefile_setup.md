### Standard Makefile

A Makefile automates compile and simulation. This is a simple but powerful Makefile that can be reused across most basic Verilog projects. Make sure the Makefile is saved inside the project folder.

**Important:** Commands inside a Makefile must be indented using a **TAB** character, not spaces. Using spaces will cause Make to generate errors.

**Reminder:** Change `project_name` to match the name of your project.

```make
# Name of the project's top module
TOP = project_name

# Source file
SRC = src/$(TOP).v

# Testbench source file
TB = tb/$(TOP)_tb.v

# Compiled simulation output
OUT = sim/sim.out

# GTKWave input file
VCD = sim/wave.vcd

all: run

# Create simulation folder for output files
sim:
	if not exist sim mkdir sim

# Compile the source and testbench
compile: sim
	iverilog -g2012 -o $(OUT) $(SRC) $(TB)

# Run simulation
run: compile
	vvp $(OUT)

# Open waveform viewer
wave:
	gtkwave $(VCD)

# Clean previously generated simulation files
clean:
	if exist sim del /Q sim\*
