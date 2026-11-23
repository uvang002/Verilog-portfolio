# XOR Gate

## Description

The goal of this project is to demonstrate basic combinational logic by combining Verilog's bitwise XOR (`^`) operator and verifying its behavior through simulation.

## Truth Table

| a | b | y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |


## Verilog Implementation

```verilog
assign y = a ^ b;
```

## Verification

I verified the Verilog implementation using a testbench, compiled the design with Icarus Verilog, and simulated it using VVP. Waveforms were generated as a `.vcd` file and inspected with GTKWave to verify that the output matched the expected truth table.

## Simulation Results

The waveform below shows the XOR gate output `y` transitioning high when exactly one of the inputs, `a` or `b`, is high. When both inputs are equal—both high or both low—`y` is low.

XOR Gate Waveform

![XOR Gate Waveform](<xor_gate_wave.png>)


## Skills Demonstrated

- Combinational Logic
- Continuous Assignments
- Testbench Development
- Waveform Analysis
- Simulation and Verification