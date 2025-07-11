`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2025 07:12:19 PM
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
reg pulse_in;
wire [7:0] pulse_width;
wire done;

pulse_width_detector uut (
    .clk(clk),
    .rst(rst),
    .pulse_in(pulse_in),
    .pulse_width(pulse_width),
    .done(done)
);

always #10 clk = ~clk;  

initial begin 
    clk = 0; 
    rst = 1; 
    pulse_in = 0; 
    #30;

    rst = 0;

    pulse_in = 1; 
    #100;
    pulse_in = 0; 
    #40;

    pulse_in = 1; 
    #60;
    pulse_in = 0; 
    #40;

    pulse_in = 1; 
    #160;
    pulse_in = 0; 
    #40;

    $finish;
end

endmodule
