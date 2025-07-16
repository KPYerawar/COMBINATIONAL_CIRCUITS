`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2025 08:35:03 AM
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
reg [6:0] in_data ;
reg load ;
wire [7:0] stored_data ;

accumulator_register uut (
.clk (clk ),
.rst(rst),
.in_data(in_data),
.load(load),
.stored_data(stored_data)
);

always #10 clk = ~clk ;

initial begin 
rst = 1 ;
clk = 0 ;
#20 ;
rst = 0 ;
load = 0;
in_data <= 8'b0010011;
#20 ;
load = 1 ;
#100 ;
load <= 0 ;
#200;
$finish ;
end 
endmodule
