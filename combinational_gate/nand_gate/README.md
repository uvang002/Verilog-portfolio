# NAND Gate

## Description

This project demonstrates basic combinational logic using the NAND gate operator in Verilog.

## Truth Table

| a | b | y |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

## Verilog Implementation

```verilog
assign y = ~(a & b);
```

## Verification

The design was verified using a Verilog testbench and simulated with Icarus Verilog. Waveforms were generated as a `.vcd` file and inspected using GTKWave.

## Simulation Results

The waveform below shows the NAND gate output `y` transitioning high when at least one input, `a` or `b`, is low. When both inputs are high, `y` is low.

NAND Gate Waveform

![NAND Gate Waveform](<nand_gate_wave.png>)


## Skills Demonstrated

- Combinational Logic
- Boolean Algebra
- Continuous Assignments
- Testbench Development
- Waveform Analysis
- Simulation and Verification