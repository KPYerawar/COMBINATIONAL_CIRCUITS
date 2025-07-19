`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/19/2025 07:27:35 PM
// Design Name: 
// Module Name: button_debouncer
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
module button_debouncer(
input clk,
input reset,
input button_in,
output reg button_out
);
reg [17:0] counter;

always @(posedge clk or posedge reset) begin
if (reset) begin
counter <= 0;
button_out <= 0;
end else begin
counter <= {counter[16:0], button_in};
if (&counter) button_out <= 1;
else if (~|counter) button_out <= 0;
end
end
endmodule
