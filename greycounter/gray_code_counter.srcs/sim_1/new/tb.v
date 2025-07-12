`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2025 09:10:43 PM
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
reg rst;
wire [2:0] gray;

gray_code_counter uut (
        .clk(clk),
        .rst(rst),
        .gray(gray)
    );

always #10 clk = ~clk;

initial begin
clk = 0;
        rst = 1;
        #20;
        rst = 0;

  #160;
$finish;
end

endmodule

