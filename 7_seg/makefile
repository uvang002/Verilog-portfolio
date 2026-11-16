run:
	iverilog -g2005-sv -o sim.vvp tb/tb_7_seg.v src/7_seg.v
	vvp -n sim.vvp

clean:
	rm -f sim.vvp sim.vcd