# SPDX-FileCopyrightText: © 2023 Uri Shaked <uri@tinytapeout.com>
# SPDX-License-Identifier: MIT

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles, Edge, RisingEdge, FallingEdge

@cocotb.test()
async def test_init(dut):
  dut._log.info("Start")
  
  # Our example module doesn't use clock and reset, but we show how to use them here anyway.
  clock = Clock(dut.clk, 10, units="us")
  cocotb.start_soon(clock.start())

  # Reset
  dut._log.info("Reset")
  dut.ena.value = 1
  dut.ui_in.value = 0b11111111
  dut.uio_in.value = 0
  dut.rst_n.value = 0
  await ClockCycles(dut.clk, 30)
  dut.rst_n.value = 1

  # Set the input values, wait five clock cycle, and check the output
  dut._log.info("Test")
  await ClockCycles(dut.clk, 5)

  # Test default seven seg display  
  for i in range(10):
    await Edge(dut.uio_out)
    await ClockCycles(dut.clk, 1)
    if int(dut.uio_out) == 0x7D:
      assert int(dut.uo_out) == 0xA4
    if int(dut.uio_out) == 0x7B:
      assert int(dut.uo_out) == 0xB0
    if int(dut.uio_out) == 0x77:
      assert int(dut.uo_out) == 0xFF
    if int(dut.uio_out) == 0x7E:
      assert int(dut.uo_out) == 0xC0


@cocotb.test()
async def test_user_input(dut):
  # Clock
  clock = Clock(dut.clk, 10, units="us")
  cocotb.start_soon(clock.start())
  # Initialize the input values
  dut.ui_in[0].value = 0
  dut.ui_in[1].value = 0
  await ClockCycles(dut.clk, 10)

  dut._log.info("Rotate the knob clockwise 4 steps")
  # Rotate the knob clockwise
  for i in range(4):
    await ClockCycles(dut.clk, 10)
    dut.ui_in[0].value = 1
    dut.ui_in[1].value = 0
      
    await ClockCycles(dut.clk, 10)
    dut.ui_in[0].value = 1
    dut.ui_in[1].value = 1
      
    await ClockCycles(dut.clk, 10)
    dut.ui_in[0].value = 0
    dut.ui_in[1].value = 1
      
    await ClockCycles(dut.clk, 10)
    dut.ui_in[0].value = 0
    dut.ui_in[1].value = 0

  await ClockCycles(dut.clk, 10)
  # check seven seg display
  for i in range(10):
    await Edge(dut.uio_out)
    await ClockCycles(dut.clk, 1)
    if int(dut.uio_out) == 0x7D:
      assert int(dut.uo_out) == 0xC0
    if int(dut.uio_out) == 0x7B:
      assert int(dut.uo_out) == 0xA4
    if int(dut.uio_out) == 0x77:
      assert int(dut.uo_out) == 0xB0
    if int(dut.uio_out) == 0x7E:
      assert int(dut.uo_out) == 0xC0

  # Pushbutton short press to get to SS_SEL  
  dut._log.info("Pushbutton short press to get to SS_SEL")
  # Press the button
  dut.ui_in[2].value = 0
  # Wait for counter to reach short press
  await ClockCycles(dut.clk, 0x64)
  # Release the button
  dut.ui_in[2].value = 1
  await ClockCycles(dut.clk, 10)
  # assert int(dut.user_project.fsm_instance.current_state) == 0b10

  dut._log.info("Rotate the knob clockwise 3 steps")
  # Rotate the knob clockwise
  for i in range(3):
    await ClockCycles(dut.clk, 10)
    dut.ui_in[0].value = 1
    dut.ui_in[1].value = 0
      
    await ClockCycles(dut.clk, 10)
    dut.ui_in[0].value = 1
    dut.ui_in[1].value = 1
      
    await ClockCycles(dut.clk, 10)
    dut.ui_in[0].value = 0
    dut.ui_in[1].value = 1
      
    await ClockCycles(dut.clk, 10)
    dut.ui_in[0].value = 0
    dut.ui_in[1].value = 0

  await ClockCycles(dut.clk, 10)
  # check seven seg display
  for i in range(10):
    await Edge(dut.uio_out)
    await ClockCycles(dut.clk, 1)
    if int(dut.uio_out) == 0x7D:
      assert int(dut.uo_out) == 0x82
    if int(dut.uio_out) == 0x7B:
      assert int(dut.uo_out) == 0x7F
    if int(dut.uio_out) == 0x77:
      assert int(dut.uo_out) == 0xFF
    if int(dut.uio_out) == 0x7E:
      assert int(dut.uo_out) == 0xC0

  # Pushbutton short press to get to SS_SEL  
  dut._log.info("Pushbutton short press to get to F_SEL")
  # Press the button
  dut.ui_in[2].value = 0
  # Wait for counter to reach short press
  await ClockCycles(dut.clk, 0x64)
  # Release the button
  dut.ui_in[2].value = 1
  await ClockCycles(dut.clk, 10)
  # assert int(dut.user_project.fsm_instance.current_state) == 0b11

  dut._log.info("Rotate the knob counterclockwise 2 steps")
  # Rotate the knob clockwise
  for i in range(2):
    await ClockCycles(dut.clk, 10)
    dut.ui_in[0].value = 0
    dut.ui_in[1].value = 1
      
    await ClockCycles(dut.clk, 10)
    dut.ui_in[0].value = 1
    dut.ui_in[1].value = 1
      
    await ClockCycles(dut.clk, 10)
    dut.ui_in[0].value = 1
    dut.ui_in[1].value = 0
      
    await ClockCycles(dut.clk, 10)
    dut.ui_in[0].value = 0
    dut.ui_in[1].value = 0

  await ClockCycles(dut.clk, 10)
  # check seven seg display
  for i in range(10):
    await Edge(dut.uio_out)
    await ClockCycles(dut.clk, 1)
    if int(dut.uio_out) == 0x7D:
      assert int(dut.uo_out) == 0x19
    if int(dut.uio_out) == 0x7B:
      assert int(dut.uo_out) == 0xFF
    if int(dut.uio_out) == 0x77:
      assert int(dut.uo_out) == 0xFF
    if int(dut.uio_out) == 0x7E:
      assert int(dut.uo_out) == 0xC0

  # Pushbutton medium press to get to EXP_METER
  dut._log.info("Pushbutton short press to get to EXP_METER")
  # Press the button
  dut.ui_in[2].value = 0
  # Wait for counter to reach short press
  await ClockCycles(dut.clk, 0x190)
  # Release the button
  dut.ui_in[2].value = 1
  await ClockCycles(dut.clk, 3)
  # assert int(dut.user_project.fsm_instance.current_state) == 0b100
  
 
@cocotb.test()
async def test_spi_sensor_read(dut):
  # Clock
  clock = Clock(dut.clk, 10, units="us")
  cocotb.start_soon(clock.start()) 

  await FallingEdge(dut.spi_sensor_ss)
  dut._log.info("SPI sensor chip selected!")
  
  # Shift out the data - 0XA9 with zero padding
  data = [0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0]
  for i in range(len(data)):
    await FallingEdge(dut.spi_sensor_sclk)
    dut.spi_sensor_miso.value = data[i]
    dut._log.info(f"Data on SPI sensor: {data[i]}")
  
  await RisingEdge(dut.spi_sensor_ss)
  dut._log.info("SPI sensor chip deselected!")
  

@cocotb.test()
async def test_spi_flash_read(dut):
  # Clock
  clock = Clock(dut.clk, 10, units="us")
  cocotb.start_soon(clock.start()) 

  await FallingEdge(dut.spi_flash_ss)
  dut._log.info("SPI Flash chip selected!")

  await RisingEdge(dut.spi_flash_ss)
  dut._log.info("SPI Flash chip deselected!")

  await ClockCycles(dut.clk, 33)  
  # check seven seg display
  for i in range(10):
    await Edge(dut.uio_out)
    await ClockCycles(dut.clk, 1)
    if int(dut.uio_out) == 0xFE:
      assert int(dut.uo_out) == 0xA4
    else:
      assert int(dut.uo_out) == 0xFF

