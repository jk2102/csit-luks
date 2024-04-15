def generate_verilog_hex_file(filename):
    with open(filename, 'w') as file:
        bytes_per_line = 16  # Number of data bytes in a line

        # Loop over the entire 20-bit address space, 16 bytes at a time
        for addr in range(0, 2**20, bytes_per_line):  # 2^20 = 1,048,576, step by bytes_per_line
            # Prepare the data for this line
            data_line = []
            for subaddr in range(addr, addr + bytes_per_line):
                # Calculate sum of the bytes in the address
                addr_high = (subaddr >> 16) & 0xFF
                addr_mid = (subaddr >> 8) & 0xFF
                addr_low = subaddr & 0xFF
                byte_sum = addr_high + addr_mid + addr_low

                # Calculate data as (sum of addr bytes) % 0xFF
                data = byte_sum % 0xFF
                data_line.append(data)

            # Prepare the record for this line
            byte_count = bytes_per_line
            address = addr & 0xFFFF  # Lower 16 bits of the address
            record_type = 0x00
            checksum = byte_count + (address >> 8) + (address & 0xFF) + record_type
            checksum += sum(data_line)
            checksum = (-checksum) & 0xFF  # Two's complement

            # Write to file
            hex_data = ''.join(f"{x:02X}" for x in data_line)
            file.write(f":{byte_count:02X}{address:04X}{record_type:02X}{hex_data}{checksum:02X}\n")

        # Write the end of file record
        file.write(":00000001FF\n")  # EOF record has 00 byte count, 0000 address, 01 record type, and FF checksum

# Example usage: generate an Intel HEX format file named "spifirmware.hex"
generate_verilog_hex_file("spifirmware.hex")
