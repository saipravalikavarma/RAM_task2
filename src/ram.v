module sync_ram (
    input clk,
    input we,                     // Write Enable
    input [3:0] addr,             // 4-bit address (16 locations)
    input [7:0] din,              // 8-bit data input
    output reg [7:0] dout        // 8-bit data output
);

    reg [7:0] memory [15:0];      // 16 x 8 RAM

    always @(posedge clk)
    begin
        if (we)
            memory[addr] <= din;  // Write operation
        else
            dout <= memory[addr]; // Read operation
    end

endmodule
