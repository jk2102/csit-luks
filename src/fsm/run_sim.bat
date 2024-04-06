@echo off
REM This is the Windows batch script for launching Icarus Verilog and GTKWave

REM Compile the Verilog design files
iverilog -o output.vvp fsm.v fsm_tb.v
IF %ERRORLEVEL% NEQ 0 (
    echo Compilation failed
    exit /b %ERRORLEVEL%
)

REM Run the simulation to create the VCD file
vvp output.vvp
IF %ERRORLEVEL% NEQ 0 (
    echo Simulation failed
    exit /b %ERRORLEVEL%
)

REM View the waveform with GTKWave
gtkwave dump.vcd