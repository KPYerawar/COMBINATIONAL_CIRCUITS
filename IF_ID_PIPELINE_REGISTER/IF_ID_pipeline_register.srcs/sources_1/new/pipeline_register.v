`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2025 07:47:41 AM
// Design Name: 
// Module Name: pipeline_register
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


module pipeline_register(
input wire clk,
input wire reset,
input wire [31:0]if_pc_value_in,
input wire [31:0] if_instruction_in,
output reg [31:0]id_pc_value_out,
output reg [31:0]id_instruction_out
);

always @(posedge clk or posedge reset) begin
if (reset) begin
    id_pc_value_out     <= 32'h0;
    id_instruction_out  <= 32'h0;
end else begin
 id_pc_value_out     <= if_pc_value_in;
 id_instruction_out  <= if_instruction_in;
 end
    end

endmodule