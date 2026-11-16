# --- Configuration ---
PROJECT ?= and_or_not_gate

SRC = src/$(PROJECT).v
TB = tb/tb_$(PROJECT).v
OUT = sim.vvp
VCD = sim.vcd

# --- Targets ---
run: $(OUT)
	vvp -n $(OUT)

# Opens GTKWave using the generated VCD file
wave: $(VCD)
	gtkwave $(VCD) &

# Automatically compile the simulation
$(OUT): $(SRC) $(TB)
	iverilog -g2005-sv -o $(OUT) $(TB) $(SRC)

# Clean up build artifacts
clean:
	rm -f $(OUT) $(VCD)