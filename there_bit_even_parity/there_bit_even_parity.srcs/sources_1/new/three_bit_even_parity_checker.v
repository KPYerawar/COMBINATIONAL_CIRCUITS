`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2025 04:42:08 PM
// Design Name: 
// Module Name: three_bit_even_parity_checker
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

module three_bit_even_parity_checker(
    input [2:0] in_parity,
    output check_parity
);
    assign check_parity = ~(in_parity[2] ^ in_parity[1] ^ in_parity[0]);
endmodule
