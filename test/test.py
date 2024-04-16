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
    dut._log.info(f"{hex(int(dut.uio_out))}, {hex(int(dut.uo_out))}")
    if int(dut.uio_out) == 0x7D:
      assert int(dut.uo_out) == 0xA4
    if int(dut.uio_out) == 0x7B:
      assert int(dut.uo_out) == 0xB0
    if int(dut.uio_out) == 0x77:
      assert int(dut.uo_out) == 0xFF
    if int(dut.uio_out) == 0x7E:
      assert int(dut.uo_out) == 0xC0

