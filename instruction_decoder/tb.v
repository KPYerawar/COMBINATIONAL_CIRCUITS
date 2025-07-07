`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2025 06:40:19 PM
// Design Name: 
// Module Name: tb
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


module tb;

reg clk ;
reg rst ;
reg [7:0] in_instruction;
wire [3:0] out_op_code ;
wire [1:0] source_register ;
wire [1:0] destination_register;

instruction_decoder uut (
.clk(clk),
.rst(rst),
.in_instruction(in_instruction),
.out_op_code(out_op_code),
.source_register(source_register),
.destination_register(destination_register)
);

always #5 clk = ~clk ;

initial begin 
rst = 1 ;
clk = 0 ;
#20 ;
rst = 0 ;
repeat (3) begin 
in_instruction = $random %64 ;
#50;
end 
end 
endmodule
