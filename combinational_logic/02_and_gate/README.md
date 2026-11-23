# AND Gate

## Description

The goal of this project is to demonstrate basic combinational logic by using Verilog's bitwise AND operator (`&`) to implement a two-input AND gate. The design is verified through simulation.

## Truth Table

| a | b | y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

## Verilog Implementation

```verilog
assign y = a & b;
```

## Verification

I verified the Verilog implementation using a testbench, compiled the design with Icarus Verilog, and simulated it using VVP. Waveforms were generated as a `.vcd` file and inspected with GTKWave to verify that the output matched the expected truth table.

## Simulation Results

The waveform below shows the AND gate output `y` transitioning high only when both inputs `a` and `b` are high.

AND Gate Waveform

![AND Gate Waveform](<and_gate_wave.png>)


## Skills Demonstrated

- Combinational Logic
- Continuous Assignments
- Testbench Development
- Waveform Analysis
- Simulation and Verification
