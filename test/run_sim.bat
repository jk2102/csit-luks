@echo off
REM This is the Windows batch script for launching Icarus Verilog and GTKWave

REM Compile the Verilog design files
iverilog -o output.vvp ..\src\fsm\fsm.v ..\src\rotational_encoder\rotational_encoder.v ..\src\seven_seg\seven_seg.v ..\src\spi_flash\spi_wrapper.v ..\src\spi_flash\spimemio.v ..\src\spi_sensor\spi_sensor.v ..\src\tt_um_csit_luks.v tb.v

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
