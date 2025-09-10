`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2025 21:05:15
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


// SR Latch using NOR gates
module sr_latch (
    input S,   // Set
    input R,   // Reset
    output Q,
    output Qbar
);

    nor (Q, R, Qbar);   // First NOR gate
    nor (Qbar, S, Q);   // Second NOR gate

endmodule
