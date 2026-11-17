# Verilog Portfolio

This Verilog portfolio demonstrates the fundamentals of digital logic design, simulation, and synthesis using Verilog HDL.

## Toolchain

This portfolio uses the following tools:

- Visual Studio Code 
- OSS CAD Suite
    - Icarus Verilog (iverilog)
    - VVP Simulator (vvp)
    - GTKWave
    - GNU Make (simulation automation)
- Git (optional for version control and GitHub)

## Environment Setup

### Install VS Code

Recommended extensions:

- Verilog-HDL/SystemVerilog
- Makefile Tools

### Install OSS CAD Suite

Download and extract OSS CAD Suite.

Verify the installation and location:

Open cmd and run:

```cmd
where yosys
where iverilog
where vvp
where gtkwave
where make
```

Expected output:

```text
...\oss-cad-suite\bin\yosys.exe
...\oss-cad-suite\bin\iverilog.exe
...\oss-cad-suite\bin\vvp.exe
...\oss-cad-suite\bin\gtkwave.exe
...\oss-cad-suite\bin\make.exe
```

Verify the installed versions:

```cmd
yosys -V
iverilog -V
vvp -V
gtkwave --version
make --version
```

### Install Git (optional)

Verify installation:

```bash
git --version
```

## Project Structure

```text
project_name/
├── src/
│   └── project_name.v
├── tb/
│   └── project_name_tb.v
├── sim/
├── Makefile
└── README.md
```

### Directory Description

|   Directory   |              Purpose               |
|---------------|------------------------------------|
| src           | Verilog source code                |
| tb            | Testbenches                        |
| sim           | Generated simulation artifacts     |
| Makefile      | Build and simulation automation    |
| README.md     | Project documentation              |

### Standard Verilog Module Template
```verilog
module top_module (
    input a,
    output y
);

    assign y = a;

endmodule
```

### Standard Testbench Template
```verilog
`timescale 1ps / 1ps

module top_module_tb;
    reg a_tb;
    wire y_tb;

    top_module dut (
        .a(a_tb),
        .y(y_tb)
    );

    initial begin
        $dumpfile("sim/wave.vcd");
        $dumpvars(0, top_module_tb);

        a_tb = 0;
        #10 a_tb = 1;
        #10 a_tb = 0;

        #10;
        $finish;
    end

endmodule
```

### Standard Makefile

**Note:** Commands in a Makefile must be indented with a TAB character, not spaces. 

```make
TOP = project_name

SRC = src/$(TOP).v
TB  = tb/$(TOP)_tb.v

OUT = sim/sim.out
VCD = sim/wave.vcd

all: run

sim:
	if not exist sim mkdir sim

compile: sim
	iverilog -g2012 -o $(OUT) $(SRC) $(TB)

run: compile
	vvp $(OUT)

wave:
	gtkwave $(VCD)

clean:
	if exist sim del /Q sim\*
```

### Build Artifacts

The following generated files are excluded from version control using .gitignore:

```text
sim/
*.out
*.vvp
*.vcd
*.gtkw
.vscode/
```

## Running Simulations

Clean generated files:

```cmd
make clean
```

Compile and run:

```cmd
make run
```

Open waveforms:

```cmd
make wave
```

## Simulation Workflow

```text
Verilog Source
      │
      ▼
   iverilog
      │
      ▼
    sim.out
      │
      ▼
     vvp
      │
      ▼
   wave.vcd
      │
      ▼
   GTKWave
```

## Verification Approach

All projects are verified using testbenches written in Verilog.
Simulation is used to verify functionality before synthesis or FPGA implementation.

Verification consists of:

- Applying test vectors
- Observing simulation results
- Generating waveform files (.vcd)
- Inspecting signals in GTKWave

## Learning Objectives

The projects in this portfolio demonstrate:

- Combinational Logic
- Boolean Algebra
- Logic Gates
- Continuous Assignments
- Testbench Development
- Waveform Analysis
- Simulation and Verification
