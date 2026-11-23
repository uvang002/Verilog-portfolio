## Project Structure

Every project should have its own dedicated folder. Organizing projects this way makes it easier to manage source files, testbenches, simulation outputs, and documentation.

It is important to create separate `src` and `tb` folders inside each project directory. Store Verilog source code in the `src` folder and testbench files in the `tb` folder.

Maintaining this structure simplifies Makefile development because the source and testbench file paths remain consistent across projects. This allows the same workflow to be reused when compiling, simulating, and verifying different designs.

Notice that the project structure does not initially include a `sim` folder. The Makefile automatically creates the `sim` directory when it is needed and stores all generated simulation files inside it. This helps keep the project organized by separating source files from simulation artifacts.

Automatically generating the `sim` folder also makes it easier to troubleshoot setup and workflow issues because all compilation outputs, simulation executables, and waveform files are stored in a predictable location.

Recommended project structure:

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
