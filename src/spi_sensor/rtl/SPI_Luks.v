module SPI_Luks (
  input wire clk,
  input wire rstn,
  input wire valid,
  output reg ready,                           //  0 == master can retrieve data from slave
  output reg ss,                              //  0 sets slave in selected state
  output reg sclk,
  output reg [7:0] toMemory = 0,              //  takes 8 bits from rx_data (4-11) and sends it to memory
  input wire miso
);

  // Internal signals
reg [15:0] rx_data = 16'h0000;                //  collects data comming from slave
reg [4:0] counter = 0;                        //  counts 16 bits comming from slave
reg [1:0] ss_wait = 0;                        //  divides basic clk - sclk == clk/8

// Initialize
initial begin
  sclk <= 1'b0;                               // Initialize sclk to low
  ss <= 1;
  ready <= 0;
  counter <= 0;
  ss_wait <= 0;
end

always @(posedge valid) begin
  ss <= 0;                                    //
  ready <= 0;                                 //
  rx_data <= 0;                               //
  toMemory <= 0;                              //
  counter <= 0;                               //
end

always @(posedge ss) begin
  ss_wait <= 0;                               //  At positive edge of ss reset ss_wait counter so it doesn't reset sclk
  sclk <= 1'b1;                               //  sclk needs to be set in constant high state until it gets chip select
end

always @(posedge clk) begin
  if (~ss) begin                              //  starts counter for sclk generating
    ss_wait = ss_wait + 1;
  end
  if (ss_wait == 2) begin
    sclk = ~sclk;                             //  toggles sclk when ss_wait value is 2
  end
end

always @(negedge clk) begin
  if (~rstn) begin                            //  checks if reset button has been pressed
    ss <= 1;                                  //  if button is pressed it resets master
    ready <= 0;
    rx_data <= 0;
    toMemory <= 0;
    counter <= 0;
  end

  if (ready == 1) begin                       //  when ready slave is deselected and it sends value revieved from slave to memory
    ss <= 1;
    toMemory [7:0] <= rx_data [11:4];
  end
end

always @(negedge sclk) begin
  if (valid) begin                            //  when valid, starts recieving data from slave
    rx_data [15:0] <= {rx_data[14:0], miso};  //  shifts old data and appends new data from slave
  end                                         //  slave sends data from msb to lsb

  if (counter == 16) begin                    //  6 == end of recieving data
    ready <= 1;                                //  it is placed in negedge because otherwise it would send extra data to memory
  end
end

always @(posedge sclk) begin                  //  on each new positive sclk generated it adds 1 to the counter
  if (valid) begin
    counter <= counter + 1;
  end
end
endmodule