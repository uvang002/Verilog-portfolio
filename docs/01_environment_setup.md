## Environment Setup

This was one of the most challenging parts of getting started. Without properly loading the OSS CAD Suite environment in the VS Code terminal, the terminal will not recognize the tools needed to compile and simulate Verilog HDL.

### Install VS Code

Recommended extensions:

- Verilog-HDL/SystemVerilog by Masahiro Hiramori
- Makefile Tools by Microsoft

### Install OSS CAD Suite

Download and extract the OSS CAD Suite to your desired location on your PC.

Make sure both `oss-cad-suite\bin` and `oss-cad-suite\lib` are in your Windows User Path:

```text
Press the Windows Key, search for "Edit environment variables for your account", and open it.

Under User variables, select Path and click Edit.

Click New and paste the folder paths for oss-cad-suite\bin and oss-cad-suite\lib.

Click OK to save changes.
```

### Configure VS Code Terminal

This profile automatically loads the OSS CAD Suite environment whenever a new terminal is opened in VS Code.

Open the VS Code Command Palette:

`Ctrl + Shift + P`

Search for:

`Preferences: Open User Settings (JSON)`

Add the following configuration:

**Reminder:** Replace `<path_to_startup_script>` with the full path to `start.bat` inside your OSS CAD Suite folder (for example, `C:\\oss-cad-suite\\start.bat`).

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

Open a Command Prompt terminal in VS Code and run:

```cmd
where yosys
where iverilog
where vvp
where gtkwave
```

Expected output:

```text
...\oss-cad-suite\bin\yosys.exe
...\oss-cad-suite\bin\iverilog.exe
...\oss-cad-suite\bin\vvp.exe
...\oss-cad-suite\bin\gtkwave.exe
```

**Note:** If an error occurs when running any of these commands, check that the path to `start.bat` is correct in User Settings (JSON).

Verify the installed versions:

```cmd
yosys -V
iverilog -V
vvp -V
gtkwave --version
```

### Install Make

OSS CAD Suite does not include `make`, which is needed to run Makefiles:

```powershell
winget install GnuWin32.Make
```

**Note:** After installing, you may also need to add `C:\Program Files (x86)\GnuWin32\bin` to your Windows User Path and restart VS Code.*

Verify the installed versions:

```cmd
make --verison
```
