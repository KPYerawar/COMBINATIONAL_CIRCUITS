`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2025 07:08:08 PM
// Design Name: 
// Module Name: pulse_width_detector
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

module pulse_width_detector(
input clk,
input rst,
input pulse_in,
output reg [7:0] pulse_width,
output reg done
);

    reg [7:0] counter;
    reg measuring;

    always @(posedge clk or posedge rst) begin
  if (rst) begin
 counter <= 8'b0;
pulse_width <= 8'b0;
  done <= 0;
 measuring <= 0;
        end
  else begin
  if (pulse_in) begin
  counter <= counter + 1;
  measuring <= 1;
                done <= 0;
            end
  else if (measuring) begin
 pulse_width <= counter;
 done <= 1;
 counter <= 0;
  measuring <= 0;
    end
   else begin
 done <= 0;
  end
  end
  end

endmodule
