`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2025 05:05:27 PM
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
    reg[3:0] in;
    wire [6:0] out;
    seven_seg uut (
    .digit(in),
    .seven_seg_out(out)
    );
    
    initial begin 
    repeat (20) begin 
    in = $random %  16 ;
    #10;
    end 
       
       $finish;
    end 
    
   
endmodule
