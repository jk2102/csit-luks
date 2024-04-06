

module seven_seg_tb;

    wire [7:0] seven_seg;
    wire [3:0] anode;
    reg clk, rst_n;
    reg [3:0] display_value;
    reg [1:0] display_select;

    seven_seg u_seven_seg (
        .clk            (clk),
        .rstn           (rst_n),

        .display_value  (display_value),
        .display_select (display_select),

        .seven_seg      (seven_seg),
        .anode          (anode)
    );

    // Clock generation
    always begin
        #5 clk = ~clk;
    end

    initial begin
        $dumpfile("dump.vcd"); $dumpvars(0, seven_seg_tb);
        clk = 0;
        rst_n = 0;        
        display_value = 0;
        display_select = 0;

        #10 rst_n = 1;

        #10 display_value = 4'b0000; display_select = 0;
        #10 display_value = 4'b0001;
        #10 display_value = 4'b0010;
        #10 display_value = 4'b0011;
        #10 display_value = 4'b0100; display_select = 1;
        #10 display_value = 4'b0101; 
        #10 display_value = 4'b0110;
        #10 display_value = 4'b0111; 
        #10 display_value = 4'b1000; display_select = 2;
        #10 display_value = 4'b1001;
        #10 display_value = 4'b1010; 
        #10 display_value = 4'b1011;
        #10 display_value = 4'b1100; display_select = 3;
        #10 display_value = 4'b1101;
        #10 display_value = 4'b1110;
        #10 display_value = 4'b1111; 
        #10 $finish;
    end

endmodule