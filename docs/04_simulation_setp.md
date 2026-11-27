## Running Simulations

The typical workflow is:

1. `make clean` removes previously generated simulation files.
2. `make run` compiles and runs the simulation.
3. `make wave` opens GTKWave for waveform analysis.

If an error occurs while running `make`, verify that:

- The Makefile is located in the project folder.
- The Verilog source file is stored in the `src` folder.
- The testbench file is stored in the `tb` folder.
- The file names match the values defined in the Makefile.

Clean previously generated sim files:

```cmd
make clean
```

Compile and run:

```cmd
make run
```

Open the waveform:

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

