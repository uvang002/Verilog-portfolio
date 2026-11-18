# NOR Gate

## Description

This project demonstrates basic combinational logic by using Verilog's bitwise OR operator and complement operator to implement a two-input NOR gate.

## Truth Table

| a | b | y |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 0 |


## Verilog Implementation

```verilog
assign y = ~(a | b);
```

## Verification

The design was verified using a Verilog testbench and simulated with Icarus Verilog. Waveforms were generated as a `.vcd` file and inspected using GTKWave.

## Simulation Results

The waveform below shows the NOR gate output `y` transitioning high only when both inputs, `a` and `b`, are low. When one or both inputs, `a` or `b`, are high, `y` is low.

NOR Gate Waveform

![NOR Gate Waveform](<nor_gate_wave.png>)


## Skills Demonstrated

- Combinational Logic
- Boolean Algebra
- Continuous Assignments
- Testbench Development
- Waveform Analysis
- Simulation and Verification