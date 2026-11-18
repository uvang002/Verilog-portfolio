# OR Gate

## Description

This project demonstrates basic combinational logic using the OR gate operator in Verilog.

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

The design was verified using a Verilog testbench and simulated with Icarus Verilog. Waveforms were generated as a `.vcd` file and inspected using GTKWave.

## Simulation Results

The waveform below shows the OR gate output `y` transitioning high when one or both inputs `a` and `b` are high.

OR Gate Waveform

![OR Gate Waveform](<or_gate_wave.png>)

## Skills Demonstrated

- Combinational Logic
- Boolean Algebra
- Continuous Assignments
- Testbench Development
- Waveform Analysis
- Simulation and Verification