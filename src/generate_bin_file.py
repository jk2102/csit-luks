def generate_verilog_bin_file(filename):
    with open(filename, 'wb') as file:  # Open the file in binary write mode
        # Loop over the entire 20-bit address space
        for addr in range(2**20):  # 2^20 = 1,048,576
            # Calculate sum of the bytes in the address
            addr_high = (addr >> 16) & 0xFF
            addr_mid = (addr >> 8) & 0xFF
            addr_low = addr & 0xFF
            byte_sum = addr_high + addr_mid + addr_low
            
            # Calculate data as (sum of addr bytes) % 0xFF
            data = byte_sum % 0xFF

            # Convert the data to bytes and write to the file
            file.write(data.to_bytes(1, byteorder='big'))

# Example usage: generate a binary file named "spifirmware.bin"
generate_verilog_bin_file("spifirmware.bin")
