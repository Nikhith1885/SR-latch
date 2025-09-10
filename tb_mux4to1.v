`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2025 20:55:27
// Design Name: 
// Module Name: tb_mux4to1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns/1ps
module tb_mux4to1;

    reg [3:0] d;
    reg [1:0] sel;
    wire y;

    // Instantiate the DUT
    mux4to1 uut (
        .d(d),
        .sel(sel),
        .y(y)
    );

    initial begin
        // Monitor changes
        $monitor("Time=%0t | d=%b | sel=%b | y=%b", $time, d, sel, y);

        // Test cases
        d = 4'b1010;  // d0=0, d1=1, d2=0, d3=1

        sel = 2'b00; #10; // Expect y = d0 = 0
        sel = 2'b01; #10; // Expect y = d1 = 1
        sel = 2'b10; #10; // Expect y = d2 = 0
        sel = 2'b11; #10; // Expect y = d3 = 1

        // Try different input
        d = 4'b1100;

        sel = 2'b00; #10; // Expect y = d0 = 0
        sel = 2'b01; #10; // Expect y = d1 = 0
        sel = 2'b10; #10; // Expect y = d2 = 1
        sel = 2'b11; #10; // Expect y = d3 = 1

        $finish;
    end

endmodule
