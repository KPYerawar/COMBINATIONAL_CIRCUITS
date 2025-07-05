`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2025 06:55:00 PM
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
reg [3:0]address;
wire [7:0]out_instructions;

rom uut(
.in_address(address),
.out_instructions(out_instructions));

initial begin 
repeat (20)  begin 
address = $random %16;
#10;
end
end
endmodule
