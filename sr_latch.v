`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2025 20:22:46
// Design Name: 
// Module Name: sr_latch
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


// SR Latch using NAND gates
module sr_latch (
    input S,   // Set
    input R,   // Reset
    output Q,
    output Qbar
);

    nand (Q, S, Qbar);   // First NAND gate
    nand (Qbar, R, Q);   // Second NAND gate

endmodule
