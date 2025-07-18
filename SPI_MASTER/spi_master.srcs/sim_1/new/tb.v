`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/18/2025 07:37:38 PM
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
reg start;
reg [7:0] tx_data;
reg miso;
wire sclk;
wire mosi;
wire cs;
wire [7:0] rx_data;
wire busy;
spi_master uut (
    .clk(clk),
    .reset(reset),
    .start(start),
    .tx_data(tx_data),
    .miso(miso),
    .sclk(sclk),
    .mosi(mosi),
    .cs(cs),
    .rx_data(rx_data),
    .busy(busy)
  );

always #5 clk = ~clk;

  reg [7:0] miso_data = 8'b11001100;

initial begin
clk = 0;
reset = 1;
start = 0;
tx_data = 8'b10101010;
miso = 0;
#20 reset = 0;
    #10 start = 1;
    #10 start = 0;
    repeat (8) begin
      wait (sclk == 1);   
      miso = miso_data[7]; 
      miso_data = miso_data << 1;
      wait (sclk == 0);   
    end
    #50;
    $finish;
  end

endmodule
