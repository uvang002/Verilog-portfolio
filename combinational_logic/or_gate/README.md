# OR Gate

## Description

The goal of this project is to demonstrate basic combinational logic by using Verilog's bitwise OR operator (`|`) to implement a two-input OR gate and verify its behavior through simulation.

## Truth Table

| a | b | y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

## Verilog Implementation

```verilog
assign y = a | b;
```

## Verification

I verified the Verilog implementation using a testbench, compiled the design with Icarus Verilog, and simulated it using VVP. Waveforms were generated as a `.vcd` file and inspected with GTKWave to verify that the output matched the expected truth table.


## Simulation Results

The waveform below shows the OR gate output `y` transitioning high when one or both inputs `a` and `b` are high. The output remains low only when both inputs are low.

OR Gate Waveform

![OR Gate Waveform](<OR_gate_wave.png>)

## Skills Demonstrated

- Combinational Logic
- Continuous Assignments
- Testbench Development
- Waveform Analysis
- Simulation and Verification
