`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2025 04:42:06 PM
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
    reg [3:0] in_data;
    reg [1:0] bit_to_shift;
    reg [1:0] operation;
    wire [3:0] out_data;
    
    barrel_shifter uut (
    .in_data(in_data),
    .bit_to_shift(bit_to_shift),
    .operation(operation),
    .out_data(out_data)
    );
    
    
    initial begin 
    in_data = 4'b0101;
    bit_to_shift = 2'b00 ;
    #20;
     bit_to_shift = 2'b01 ;
    #20; bit_to_shift = 2'b10 ;
    #20; bit_to_shift = 2'b11 ;
    #20;
    operation = 2'b01;
    #30;
     bit_to_shift = 2'b00 ;
    #20;
     bit_to_shift = 2'b01 ;
    #20; bit_to_shift = 2'b10 ;
    #20; bit_to_shift = 2'b11 ;
    #20;
    operation = 2'b10;
    #30;
     bit_to_shift = 2'b00 ;
    #20;
     bit_to_shift = 2'b01 ;
    #20; bit_to_shift = 2'b10 ;
    #20; bit_to_shift = 2'b11 ;
    #20;
    operation = 2'b11;
    #30;
     bit_to_shift = 2'b00 ;
    #20;
     bit_to_shift = 2'b01 ;
    #20; bit_to_shift = 2'b10 ;
    #20; bit_to_shift = 2'b11 ;
    #20;
    operation = 2'b00;
    #30;
     bit_to_shift = 2'b00 ;
    #20;
     bit_to_shift = 2'b01 ;
    #20; bit_to_shift = 2'b10 ;
    #20; bit_to_shift = 2'b11 ;
    #20;
     in_data = 4'b1101;
    bit_to_shift = 2'b00 ;
    #20;
     bit_to_shift = 2'b01 ;
    #20; bit_to_shift = 2'b10 ;
    #20; bit_to_shift = 2'b11 ;
    #20;
    operation = 2'b01;
    #30;
     bit_to_shift = 2'b00 ;
    #20;
     bit_to_shift = 2'b01 ;
    #20; bit_to_shift = 2'b10 ;
    #20; bit_to_shift = 2'b11 ;
    #20;
    operation = 2'b10;
    #30;
     bit_to_shift = 2'b00 ;
    #20;
     bit_to_shift = 2'b01 ;
    #20; bit_to_shift = 2'b10 ;
    #20; bit_to_shift = 2'b11 ;
    #20;
    operation = 2'b11;
    #30;
     bit_to_shift = 2'b00 ;
    #20;
     bit_to_shift = 2'b01 ;
    #20; bit_to_shift = 2'b10 ;
    #20; bit_to_shift = 2'b11 ;
    #20;
    operation = 2'b00;
    #30;
     bit_to_shift = 2'b00 ;
    #20;
     bit_to_shift = 2'b01 ;
    #20; bit_to_shift = 2'b10 ;
    #20; bit_to_shift = 2'b11 ;
    #20;
    
    
    
    $finish;
    end
   
endmodule
