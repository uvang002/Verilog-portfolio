# NOT Gate

## Description

The goal of this project is to demonstrate basic combinational logic by using Verilog's bitwise complement (`~`) operator to implement a NOT gate and verify its behavior through simulation.

## Truth Table

| a | y |
|---|---|
| 0 | 1 |
| 1 | 0 |

## Verilog Implementation

```verilog
assign y = ~a;
```

## Verification

I verified the Verilog implementation using a testbench, compiled the design with Icarus Verilog, and simulated it using VVP. Waveforms were generated as a `.vcd` file and inspected with GTKWave to verify that the output matched the expected truth table.

## Simulation Results

The waveform below shows the NOT gate output `y` as the inverse of the input `a`. When `a` is low, `y` is high. When `a` is high, `y` is low.

NOT Gate Waveform

![NOT Gate Waveform](<not_gate_wave.png>)

## Skills Demonstrated

- Combinational Logic
- Continuous Assignments
- Testbench Development
- Waveform Analysis
- Simulation and Verification