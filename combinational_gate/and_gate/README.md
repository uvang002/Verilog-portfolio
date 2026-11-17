# AND Gate

## Description

This project demonstrates basic combinational logic using the AND gate operator in Verilog.

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

The design was verified using a Verilog testbench and simulated with Icarus Verilog. Waveforms were generated as a `.vcd` file and inspected using GTKWave.

## Simulation Results

The waveform below shows the AND gate output (`y`) transitioning high only when both inputs (`a` and `b`) are high.

[AND Gate Waveform]

![alt text](<AND_gate_wave.png>)


## Skills Demonstrated

- Combinational Logic
- Boolean Algebra
- Continuous Assignments
- Testbench Development
- Waveform Analysis
- Simulation and Verification