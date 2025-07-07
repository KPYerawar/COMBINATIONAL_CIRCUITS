`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2025 06:34:24 PM
// Design Name: 
// Module Name: instructoin_decoder
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


module instruction_decoder(
    input [7:0] in_instruction,
    output reg [3:0] out_op_code,
    output reg [1:0] destination_register,
    output reg [1:0] source_register,
    input clk , rst 
    );
    
always @(posedge clk ) begin 
if ( rst ) begin 
out_op_code <= 4'b0000;
destination_register <= 2'b00 ;
source_register <= 2'b00 ;
end 
else begin 
out_op_code <= in_instruction[ 7:4] ;
destination_register <= in_instruction [3:2];
source_register <= in_instruction [1:0];
end 
end 
endmodule
