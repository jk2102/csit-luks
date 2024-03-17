module SPI_Luks (

    input wire clk,
    input wire rstn,
    input wire valid,
    output reg ready,
    output reg ss,
    output reg sclk,
    output reg [7:0] toMemory = 0,
    input wire miso
);

  // Internal signals
reg [15:0] rx_data = 16'h0000;
reg [4:0] counter = 0;
reg [1:0] ss_wait = 0;

// Initialize
initial begin
    sclk <= 1'b0; // Initialize sclk to low
    ss <= 1;
    ready <= 0;
    counter <= 0;
    ss_wait <= 0;
end

always @(posedge valid) begin
  ss <= 0;
  ready <= 0;
  rx_data <= 0;
  toMemory <= 0;
  counter <= 0;
  ss_wait <= 0;
end

always @(posedge clk) begin
  if (~ss) begin
    ss_wait = ss_wait + 1;
  end else begin
    sclk = 1;
  end
  if (ss_wait == 2) begin
    sclk = ~sclk;
  end
end

always @(negedge clk) begin

  if (valid) begin
    rx_data [15:0] <= {rx_data[14:0], miso};
  end
  if (~rstn) begin
    ss <= 1;
    ready <= 0;
    rx_data <= 0;
    toMemory <= 0;
    counter <= 0;
  end
end

always @(posedge clk) begin
  if (counter == 16) begin
    ready = 1;
    ss = 1;
    toMemory [7:0] <= rx_data [11:4];
  end
end

always @(posedge sclk) begin
  if (valid) begin
    counter = counter + 1;
  end

end

endmodule