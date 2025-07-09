`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2025 06:51:03 PM
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
reg write_en;
reg read_en;
reg [7:0] data_in;
wire [7:0] data_out;
wire full;
wire empty;

fifo uut (
    .clk(clk),
    .rst(rst),
    .write_en(write_en),
    .read_en(read_en),
    .data_in(data_in),
    .data_out(data_out),
    .full(full),
    .empty(empty)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    write_en = 0;
    read_en = 0;
    data_in = 0;

    #20;
    rst = 0;

    write_en = 1;
    read_en = 0;
    repeat (10) begin
        data_in = $random % 256;
        #10;
    end

    write_en = 0;
    read_en = 1;

    repeat (5) begin
        #10;
    end

    write_en = 1;
    read_en = 0;

    repeat (5) begin
        data_in = $random % 256;
        #10;
    end

    write_en = 0;
    read_en = 1;
    repeat (10) begin
        #10;
    end

    $finish;
end

endmodule
