`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2025 04:58:30 PM
// Design Name: 
// Module Name: seven_seg
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


module seven_seg(
    input [3:0] digit,
    output reg [6:0] seven_seg_out
    );
    
  always @(*) begin 
  case (digit)
 4'd0: seven_seg_out = 7'b1111110;
 4'd1: seven_seg_out = 7'b0110000;
 4'd2: seven_seg_out = 7'b1101101;
 4'd3: seven_seg_out = 7'b1111001;
 4'd4: seven_seg_out = 7'b0110011;
 4'd5: seven_seg_out = 7'b1011011;
 4'd6: seven_seg_out = 7'b1011111;
 4'd7: seven_seg_out = 7'b1110000;
 4'd8: seven_seg_out = 7'b1111111;
 4'd9: seven_seg_out = 7'b1111011;
 default: seven_seg_out = 7'b0000000; 
    endcase
    end
    endmodule
