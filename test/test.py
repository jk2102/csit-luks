# SPDX-FileCopyrightText: © 2023 Uri Shaked <uri@tinytapeout.com>
# SPDX-License-Identifier: MIT

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles, Edge

@cocotb.test()
async def test_adder(dut):
  dut._log.info("Start")
  
  # Our example module doesn't use clock and reset, but we show how to use them here anyway.
  clock = Clock(dut.clk, 10, units="us")
  cocotb.start_soon(clock.start())

  # Reset
  dut._log.info("Reset")
  dut.ena.value = 1
  dut.ui_in.value = 0
  dut.uio_in.value = 0
  dut.rst_n.value = 0
  await ClockCycles(dut.clk, 10)
  dut.rst_n.value = 1

  # Set the input values, wait five clock cycle, and check the output
  dut._log.info("Test")
  await ClockCycles(dut.clk, 5)

  # Test default seven seg display  
  for i in range(10):
    await Edge(dut.uio_out)
    if dut.uio_out[3:0] == 0xD:
      assert dut.uo_out.value == 0xA4
    if dut.uio_out[3:0] == 0xB:
      assert dut.uo_out.value == 0xB0
    if dut.uio_out[3:0] == 0x7:
      assert dut.uo_out.value == 0xFF
    if dut.uio_out[3:0] == 0xE:
      assert dut.uo_out.value == 0xC0

