`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2025 04:26:06 PM
// Design Name: 
// Module Name: barrel_shifter
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


module barrel_shifter #(
   parameter N = 4)
   (
input  [N-1:0] in_data,
input  [1:0] bit_to_shift,
input  [1:0] operation,
output reg [N-1:0] out_data
    );
    
    
    always@(*) begin
    case (operation) 
    2'b00 : out_data = in_data << bit_to_shift ;
    2'b01 : out_data = in_data >> bit_to_shift ;
    2'b10 : out_data = (in_data << bit_to_shift) | (in_data >> (N - bit_to_shift) );
    default : out_data = (in_data >> bit_to_shift) | (in_data << (N - bit_to_shift) );
endcase 
end
    
endmodule
