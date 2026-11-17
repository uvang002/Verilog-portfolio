# NOT Gate

## Description

This project demonstrates basic combinational logic using the NOT gate operator in Verilog.

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

The design was verified using a Verilog testbench and simulated with Icarus Verilog. Waveforms were generated as a `.vcd` file and inspected using GTKWave.

## Skills Demonstrated

- Combinational Logic
- Boolean Algebra
- Continuous Assignments
- Testbench Development
- Waveform Analysis
- Simulation and Verification