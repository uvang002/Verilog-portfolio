# XNOR Gate

## Description

The goal of this project is to demonstrate basic combinational logic by combining Verilog's bitwise XOR (`^`) operator and bitwise complement (`~`) operator to implement a two-input XNOR gate.

## Truth Table

| a | b | y |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |


## Verilog Implementation

```verilog
assign y = ~(a ^ b);
```

## Verification

I verified the Verilog implementation using a testbench, compiled the design with Icarus Verilog, and simulated it using VVP. Waveforms were generated as a `.vcd` file and inspected with GTKWave to verify that the output matched the expected truth table.

## Simulation Results

The waveform below shows the XNOR gate output `y` transitioning high when inputs `a` and `b` have the same value. When the inputs differ, `y` transitions low.

XNOR Gate Waveform

![XNOR Gate Waveform](<xnor_gate_wave.png>)


## Skills Demonstrated

- Combinational Logic
- Continuous Assignments
- Testbench Development
- Waveform Analysis
- Simulation and Verification