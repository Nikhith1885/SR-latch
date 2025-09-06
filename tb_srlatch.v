`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2025 20:24:26
// Design Name: 
// Module Name: tb_srlatch
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


module tb_srlatch;

    reg S, R;         // Testbench inputs
    wire Q, Qbar;     // Outputs

    // Instantiate the design
    sr_latch uut (
        .S(S),
        .R(R),
        .Q(Q),
        .Qbar(Qbar)
    );

    initial begin
        // Monitor outputs whenever inputs change
        $monitor("Time=%0t | S=%b R=%b | Q=%b Qbar=%b", $time, S, R, Q, Qbar);

        // Test sequence
        S=0; R=0; #10;  // Hold condition (previous state remains)
        S=0; R=1; #10;
        S=1; R=1; #10;  // Reset condition (Q=0, Qbar=1)
        S=1; R=0; #10;  // Set condition   (Q=1, Qbar=0)
        S=1; R=1; #10;
        S=1; R=1; #10;  // Invalid condition (both outputs go to 0 temporarily)

        $finish;
    end
endmodule
