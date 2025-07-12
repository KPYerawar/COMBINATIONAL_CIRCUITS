`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2025 09:08:44 PM
// Design Name: 
// Module Name: gray_code_counter
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

module gray_code_counter(
input clk,
input rst,
output reg [2:0] gray
);

reg [2:0] binary;

always @(posedge clk or posedge rst) begin
if (rst) begin
binary <= 3'b000;
gray <= 3'b000;
end else begin
binary <= binary + 1;
gray <= binary ^ (binary >> 1);
end
end

endmodule
