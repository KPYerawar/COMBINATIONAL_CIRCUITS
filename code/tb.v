`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2025 05:20:20 PM
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
reg clk;
reg rst ;
reg load ;
reg [3:0]data ;
wire [3:0]pc_out ;

pc uut (
.clk (clk),
.rst(rst),
.load(load) ,
.data(data),
.out(pc_out) 
);


always #5 clk = ~clk ;

initial begin 
rst = 1 ;
clk = 0 ;
#10 ;
rst = 0 ;
load = 1 ;
repeat (10) begin 
 data = $random % 16 ;
 #5 ;
 end 
 data = 0 ;
 load = 0 ;
 #100 ;
 load = 1 ;
repeat (10) begin 
 data = $random % 16 ;
 #5 ;
 end ;
$finish;
 end 

endmodule
