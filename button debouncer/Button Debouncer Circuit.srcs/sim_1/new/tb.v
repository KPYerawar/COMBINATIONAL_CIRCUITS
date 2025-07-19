`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/19/2025 07:33:27 PM
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
reg clk, reset, button_in;
wire button_out;

button_debouncer dut(
.clk(clk),
.reset(reset),
.button_in(button_in),
.button_out(button_out)
);

always #10 clk = ~clk;

initial begin
clk = 0;
reset = 1;
button_in = 0;
#50 reset = 0;

button_in = 1; #10;
button_in = 0; #10;
button_in = 1; #10;
button_in = 0; #10;
button_in = 1; #1000;

button_in = 0; #2000;

button_in = 1; #3000;
button_in = 0; #2000;

$finish;
end
endmodule

