def generate_verilog_hex_file(filename):
    with open(filename, 'w') as file:
        # Initialize a list to hold the 16 bytes of data per line
        bytes_per_line = 16
        data_line = []

        # Loop over the entire 20-bit address space
        for addr in range(2**20):  # 2^20 = 1,048,576
            # Calculate sum of the bytes in the address
            addr_high = (addr >> 16) & 0xFF
            addr_mid = (addr >> 8) & 0xFF
            addr_low = addr & 0xFF
            byte_sum = addr_high + addr_mid + addr_low
            
            # Calculate data as (sum of addr bytes) % 0xFF
            data = byte_sum % 0xFF

            # Add data to the current line list
            data_line.append(f"{data:02X}")

            # If we have collected 16 bytes, write them to the file and reset the line
            if len(data_line) == bytes_per_line:
                file.write(" ".join(data_line) + "\n")
                data_line = []

        # After the loop, if there is any residual data that hasn't been written because
        # it didn't fill up a complete line, write it now
        if data_line:
            file.write(" ".join(data_line) + "\n")

# Example usage: generate a Verilog hex file named "memory_contents.hex"
generate_verilog_hex_file("spifirmware.hex")
