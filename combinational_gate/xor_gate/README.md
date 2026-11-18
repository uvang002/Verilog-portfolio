# XOR Gate

## Description

This project demonstrates basic combinational logic by using Verilog's bitwise XOR operator to implement a two-input XOR gate.

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

The design was verified using a Verilog testbench and simulated with Icarus Verilog. Waveforms were generated as a `.vcd` file and inspected using GTKWave.

## Simulation Results

The waveform below shows the XOR gate output `y` transitioning high when exactly one of the inputs, `a` or `b`, is high. When both inputs are equal—both high or both low—`y` is low.

XOR Gate Waveform

![XOR Gate Waveform](<xor_gate_wave.png>)


## Skills Demonstrated

- Combinational Logic
- Boolean Algebra
- Continuous Assignments
- Testbench Development
- Waveform Analysis
- Simulation and Verification