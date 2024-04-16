def calculate_data_value(address):
    """
    Calculate the data value for a given 24-bit address.
    
    The data value is computed as (sum of address bytes) % 0xFF.

    Parameters:
    address (int): A 20-bit integer address value.

    Returns:
    int: The calculated data value.
    """
    # Ensure the address is within the 20-bit range
    if address < 0 or address > 2**20:
        raise ValueError("Address must be a 20-bit integer.")

    # Extract the bytes from the address
    addr_high = (address >> 16) & 0xFF  # Extract high byte
    addr_mid = (address >> 8) & 0xFF    # Extract middle byte
    addr_low = address & 0xFF           # Extract low byte

    # Calculate the sum of the address bytes
    byte_sum = addr_high + addr_mid + addr_low

    # Return the data value as sum of address bytes modulo 255
    return byte_sum % 0xFF

# Example usage
address = 0xCB6AB  # Example address
data_value = calculate_data_value(address)
print(f"Data value for address {address:06X} is {data_value:02X}")
