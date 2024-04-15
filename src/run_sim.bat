@echo off
REM This is the Windows batch script for launching Icarus Verilog and GTKWave

REM Compile the Verilog design files
iverilog -o output.vvp fsm\fsm.v rotational_encoder\rotational_encoder.v seven_seg\seven_seg.v spi_flash\spi_flash.v spi_flash\spiflash.v spi_sensor\spi_sensor.v tt_um_csit_luks.v tt_um_csit_luks_tb.v

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
