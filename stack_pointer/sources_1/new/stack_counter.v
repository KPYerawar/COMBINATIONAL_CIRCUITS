`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/08/2025 06:26:25 PM
// Design Name: 
// Module Name: stack_pointer
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


module stack_counter(
    input clk,
    input rst,
    input pop,
    input push,
    input [7:0] data_in,
    output reg[7:0] data_out
    );
    
 reg [7:0] stack_memory [15:0];
  reg [3:0] stack_pointer1;

 always @(posedge clk or posedge rst )
 begin 
 
 if ( rst ) begin 
 stack_pointer1 <= 4'b1111;
 end 
 else if ( !pop &&  push ) begin 
 stack_memory [ stack_pointer1] <= data_in;
 stack_pointer1 <= stack_pointer1 -1 ;
 end 
 else if (pop && !push) begin 
 data_out <= stack_memory[stack_pointer1 + 1];
 stack_pointer1 <= stack_pointer1 + 1;
 end 
 end 
endmodule
