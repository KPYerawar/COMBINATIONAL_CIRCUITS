`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2025 05:16:45 PM
// Design Name: 
// Module Name: pc
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


module pc(
    input clk,
    input rst,
    input load,
    input [3:0] data,
    output reg [3:0] out
    );
    
    always @( posedge clk ) 
    begin
    if ( rst ) begin 
      out <= 4'b0000;
      end 
      else if ( load ) begin 
      out <= data ;
      end 
      else begin 
      out = out+1 ;
      end 
      end 
endmodule
