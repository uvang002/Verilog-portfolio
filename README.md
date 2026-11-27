# Verilog Portfolio

This Verilog portfolio demonstrates the fundamentals of digital logic design, simulation, and synthesis.

I created this repository to document my journey learning HDL concepts, digital logic design, and the workflow necessary to successfully develop and test digital circuit designs. I want to create a practical development environment for compiling, simulating, and verifying digital designs using the OSS CAD Suite.

In addition, I hope that my journey will be a useful resource for other electrical engineering students who are beginning to learn HDL and want to avoid spending hours debugging toolchain and environment setup issues.

## Repository Reorganization

This repository has been reorganized to improve consistency, readability, and the overall learning experience.

When I first launched this repository, it primarily served as a collection of logic gate projects and did not provide a clear learning path for students. As the repository grew, I redesigned it from a simple gate collection into a learning-oriented resource.

The new layout follows the logical progression I learned in my Digital Logic Fundamentals course, making it easier for students to build foundational knowledge step by step. Instead of organizing projects alphabetically, the repository now presents concepts in a structured learning sequence that more closely reflects how digital logic is typically taught.

Each project follows a consistent structure that includes:

- README documentation
- Verilog source files (`src/`)
- Testbenches (`tb/`)
- Build automation (`makefile`)
- Waveform verification results

Although GitHub displays files and folders alphabetically, every project contains the same core components to maintain consistency throughout the repository.

This portfolio also includes documentation outlining how I configured my development environment, including Visual Studio Code and the OSS CAD Suite. 

For setup instructions:
- [Environment Setup](docs/01_environment_setup.md)
- [Project Structure](docs/02_project_structure.md) 
- [Makefile](docs/03_makefile_setup.md) 
- [Simulation](docs/04_simulation_setup.md)

## Learning Objectives

The projects in this portfolio demonstrate:

- Digital Logic Design
- Verilog HDL Development
- Testbench Development
- Simulation and Verification
- Waveform Analysis and Debugging
- Engineering Documentation
- Git and Version Control Workflows

## Projects

### Combinational Logic

- [x] NOT Gate
- [x] AND Gate
- [x] OR Gate
- [x] NAND Gate
- [x] NOR Gate
- [x] XOR Gate
- [x] XNOR Gate
- [ ] 2-to-1 Multiplexer
- [ ] 4-to-1 Multiplexer
- [ ] Decoder

## Toolchain

This portfolio uses the following tools:

- Visual Studio Code 
- OSS CAD Suite
    - Icarus Verilog (iverilog)
    - vvp (Icarus Verilog runtime)
    - GTKWave
    - GNU Make (simulation automation)
- Git (optional for version control and GitHub)

## Verification Approach

Each completed project is verified using a Verilog testbench and simulated using the OSS CAD Suite.

Waveforms are analyzed using GTKWave to verify functionality and confirm correct operation.

Verification consists of:

- Applying test vectors
- Observing simulation results
- Generating waveform files (.vcd)
- Inspecting signals in GTKWave

## Reporting Issues

If you spot an issue or have a suggestion, please let me know by opening an Issue or starting a Discussion.

This repository is part of my learning journey, and mistakes are inevitable. Sharing problems, solutions, and different perspectives helps everyone learn.

Feel free to use my personal SBAR template below to document issues, troubleshooting steps, and lessons learned. I'll do my best to review and respond when I can. Learn more about why [SBAR works for me](docs/structured_problem_solving.md)

See the full [SBAR Template](docs/sbar_template.md)

## AI Assistance

I use AI tools such as Microsoft Copilot as an aid for documentation, troubleshooting, and workflow organization.

Any AI-generated suggestions included in this repository have been reviewed, tested, and verified as part of my learning process.
