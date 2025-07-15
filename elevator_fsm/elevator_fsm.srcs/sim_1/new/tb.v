`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/15/2025 08:56:38 AM
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
reg [2:0] in_floor;
reg [2:0] default_floor;
wire moving_up;
wire moving_down;
wire [2:0] current_floor;
wire stop;

elevator_fsm uut (
    .clk(clk),
    .rst(rst),
    .in_floor(in_floor),
    .default_floor(default_floor),
    .moving_up(moving_up),
    .moving_down(moving_down),
    .current_floor(current_floor),
    .stop(stop)
);

always #10 clk = ~clk;
initial begin
    clk = 0;
    rst = 1;
    in_floor = 0;
    default_floor = 2;  
    #30;
    rst = 0;

    in_floor = 5;
    #200;
    in_floor = 1;
    #200;
    in_floor = 1;
    #100;
    $finish;
end

endmodule

