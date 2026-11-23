# NAND Gate

## Description

The goal of this project is to demonstrate basic combinational logic by combining Verilog's bitwise AND (`&`) operator and bitwise complement (`~`) operator to implement a two-input NAND gate and verify its behavior through simulation.

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

I verified the Verilog implementation using a testbench, compiled the design with Icarus Verilog, and simulated it using VVP. Waveforms were generated as a `.vcd` file and inspected with GTKWave to verify that the output matched the expected truth table.

## Simulation Results

The waveform below shows the NAND gate output `y` remaining high whenever at least one input `a` or `b` is low. When both inputs are high, the output transitions low.

NAND Gate Waveform

![NAND Gate Waveform](<nand_gate_wave.png>)


## Skills Demonstrated

- Combinational Logic
- Continuous Assignments
- Testbench Development
- Waveform Analysis
- Simulation and Verification