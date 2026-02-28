
`timescale 1ns/1ps

module sync_ram_tb;

    reg clk;
    reg we;
    reg [3:0] addr;
    reg [7:0] din;
    wire [7:0] dout;

    // Instantiate RAM
    sync_ram uut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .din(din),
        .dout(dout)
    );

    // Clock generation
    always #5 clk = ~clk;   // 10ns clock period

    initial begin
        clk = 0;
        we = 0;
        addr = 0;
        din = 0;

        // Write Data
        #10 we = 1; addr = 4'b0001; din = 8'hAA;
        #10 addr = 4'b0010; din = 8'h55;

        // Read Data
        #10 we = 0; addr = 4'b0001;
        #10 addr = 4'b0010;

        #20 $finish;
    end

endmodule
