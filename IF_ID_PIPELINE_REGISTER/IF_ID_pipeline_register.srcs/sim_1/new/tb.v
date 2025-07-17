`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2025 07:50:53 AM
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
reg reset;
reg [31:0] if_pc_value_in;
reg [31:0] if_instruction_in;
wire [31:0] id_pc_value_out;
wire [31:0] id_instruction_out;

pipeline_register dut (
.clk(clk),
 .reset(reset),
.if_pc_value_in(if_pc_value_in),
.if_instruction_in(if_instruction_in),
.id_pc_value_out(id_pc_value_out),
.id_instruction_out(id_instruction_out)
  );

   always #5 clk = ~clk;
  

  initial begin
    reset = 1;
    clk = 0 ;
    #20 ;
    reset = 0 ;
    repeat ( 10 ) begin 
    if_pc_value_in = $random %1024;
        if_instruction_in = $random %1024;

    #10;
    end
    $finish;
  end

endmodule