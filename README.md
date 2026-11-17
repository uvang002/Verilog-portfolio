# Verilog Portfolio

This Verilog portfolio demonstrates the fundamentals of digital logic design, simulation, and synthesis.

I created this repository to document my journey learning HDL concepts, digital logic design, and the workflow necessary to successfully develop and test digital circuit designs. I want to create a practical development environment for compiling, simulating, and verifying digital designs using the OSS CAD Suite.

In addition, I hope that my journey will be a great resource for other electrical engineering students who are starting their journey with HDL and want to avoid spending hours debugging toolchain and environment setup issues.

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

This was one of the most challenging parts of getting started. I found that without properly loading the OSS CAD Suite environment in the VS Code terminal, the application would not recognize the tools needed to compile, simulate, and implement Verilog HDL.

### Install VS Code

Recommended extensions:

- Verilog-HDL/SystemVerilog
- Makefile Tools

### Install OSS CAD Suite

Download and extract the OSS CAD Suite to the desired location on your PC.

After extracting it, configure the VS Code terminal before verifying the tools in the OSS CAD Suite.

Adding this profile will automatically load the OSS CAD Suite environment whenever a new terminal is opened in VS Code.

Open the VS Code Command Palette:

```text
Ctrl + Shift + P
```

Search for:

```text
Preferences: Open User Settings (JSON)
```

Add the following configuration:

**Reminder:** Change `<path_to_startup_script>` to the location of the OSS CAD Suite on your PC.

```json
{
    "terminal.integrated.profiles.windows": {
        "OSS CAD Suite": {
            "path": "C:\\Windows\\System32\\cmd.exe",
            "args": [
                "/k",
                "<path_to_startup_script>"
            ]
        }
    },
    "terminal.integrated.defaultProfile.windows": "OSS CAD Suite"
}
```

Verify the installation and location:

Open Command Prompt in VS Code Terminal and run:

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
**Note:** If there is an error when running the command, check that the path to the OSS CAD Suite is correct in VS Code Command Palette.

Verify the installed versions:

```cmd
yosys -V
iverilog -V
vvp -V
gtkwave --version
make --version
```

### Install Git (optional for version control and GitHub) 

Git is a great tool for pushing projects to GitHub, but it is not used to compile or simulate HDL.

Verify installation:

```bash
git --version
```

## Project Structure

**Important:** `src` and `tb` are two separate folders inside the project folder. Save Verilog source code in the `src` folder and the testbench in the `tb` folder.

**Note:** Every project should have it's own project folder. 

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

    // Device Under Test (DUT)
    top_module dut (
        .a(a_tb),
        .y(y_tb)
    );

    initial begin
        // Creates a VCD waveform file that can be viewed in GTKWave
        $dumpfile("sim/wave.vcd");
        // Records all signals in the testbench
        $dumpvars(0, top_module_tb);
        // Test vectors
        a_tb = 0;
        // Delays the input signal by 10 ps
        #10 a_tb = 1;
        #10 a_tb = 0;

        #10;
        $finish;
    end

endmodule
```

### Standard Makefile
**Important:** Save the Makefile inside the project folder.

**Note:** Commands in a Makefile must be indented with a TAB character, not spaces.

**Reminder:** Change `project_name` to the name of your project.
```make
# Name of project's top module
TOP = project_name 

# Source file
SRC = src/$(TOP).v

# Testbench source file
TB  = tb/$(TOP)_tb.v

# Compiled simulation output
OUT = sim/sim.out

# GTKwave input file
VCD = sim/wave.vcd

all: run

# Create simulation folder for OUT and VCD file
sim:
	if not exist sim mkdir sim

# Compile the source and testbench
compile: sim
	iverilog -g2012 -o $(OUT) $(SRC) $(TB)

# Run Simulation
run: compile
	vvp $(OUT)

# Open waveform viewer
wave:
	gtkwave $(VCD)

# Clean sim folder of previous simulation files
clean:
	if exist sim del /Q sim\*
```

## Running Simulations

**Note:** If an error occurs when running `make run`, check project folder for Makefile and that `src` and `tb` are separate folders in the project folder.

Clean previously generated sim files:

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

## Build Artifacts
This step is optional and only used when pushing the project to GitHub with Git.

The following generated files are excluded from version control using `.gitignore`:

```text
sim/
*.out
*.vvp
*.vcd
*.gtkw
.vscode/
```

## Verification Approach

All projects are verified using testbenches written in Verilog.
Simulation is used to verify functionality before implementation.

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

## Projects

### Combinational Logic

- [x] AND Gate
- [x] OR Gate
- [x] NOT Gate
- [ ] NAND Gate
- [ ] NOR Gate
- [ ] XOR Gate
- [ ] XNOR Gate
- [ ] 2-to-1 Multiplexer
- [ ] 4-to-1 Multiplexer
- [ ] Decoder
