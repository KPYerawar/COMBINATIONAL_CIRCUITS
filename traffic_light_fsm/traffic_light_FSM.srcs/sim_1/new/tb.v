`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/14/2025 08:10:01 AM
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
wire [2:0]light_a ;
wire [2:0]light_b ;

traffic_light_fsm uut (
.clk ( clk ) ,
.rst (rst) ,
.light_a(light_a),
.light_b ( light_b) );

always #10 clk = ~ clk ;

initial begin 
rst = 1 ;
clk =  0  ;
#20 ;
rst = 0 ;
#3003;
$finish ;
end 
endmodule
