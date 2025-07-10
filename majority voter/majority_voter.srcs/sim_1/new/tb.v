`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/10/2025 07:36:50 PM
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
reg a , b , c;
wire majority_out;

majority_voter uut (
.a(a),
.b(b),
.c(c),
.majority_out(majority_out)
);

initial begin 
 a= 0 ; b = 0 ; c= 0 ; #50;
  a= 0 ; b = 0 ; c= 1 ; #50;
 a= 0 ; b = 1 ; c= 0 ; #50;
 a= 0 ; b = 1 ; c= 1 ; #50;
 a= 1; b = 0 ; c= 0 ; #50;
 a= 1 ; b = 0 ; c= 1 ; #50;
 a= 1 ; b = 1 ; c= 0 ; #50;
 a= 1 ; b = 1 ; c= 1 ; #50;
 end 

endmodule
