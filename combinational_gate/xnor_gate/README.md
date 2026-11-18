# XNOR Gate

## Description

This project demonstrates basic combinational logic by using Verilog's bitwise XOR operator and complement operator to implement a two-input XNOR gate.

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

The design was verified using a Verilog testbench and simulated with Icarus Verilog. Waveforms were generated as a `.vcd` file and inspected using GTKWave.

## Simulation Results

The waveform below shows the XNOR gate output `y` transitioning high when inputs `a` and `b` have the same value. When inputs `a` and `b` differ, `y` is low.

XNOR Gate Waveform

![XNOR Gate Waveform](<xnor_gate_wave.png>)


## Skills Demonstrated

- Combinational Logic
- Boolean Algebra
- Continuous Assignments
- Testbench Development
- Waveform Analysis
- Simulation and Verification