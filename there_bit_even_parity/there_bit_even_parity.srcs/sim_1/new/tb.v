`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2025 04:42:49 PM
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
reg [2:0] in;
wire out;

    three_bit_even_parity_checker dut (
        .in_parity(in),
        .check_parity(out)
);

    initial begin
        repeat (10) begin
        in = $random % 8;
        #10;
        end
        $finish;
    end
endmodule

