`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/14/2025 07:42:49 AM
// Design Name: 
// Module Name: traffic_light_fsm
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


module traffic_light_fsm(
 
    input rst,
    input clk,
    output reg [2:0] light_a,
    output reg [2:0] light_b
    );
    
localparam s0 = 2'b00 ;
localparam s1 = 2'b01 ;
localparam s2 = 2'b10 ;
localparam s3 = 2'b11 ;

reg [1:0]state ;
reg [3:0] timer; 
always @(posedge clk or posedge rst )
begin 
if ( rst )
begin 
state <= s0 ;
timer <= 0 ;
end 
else begin
case (state ) 
s0: begin 
    light_a <= 3'b100 ;
     light_b <= 3'b001;
     if ( timer == 5 ) begin 
        state <= s1 ;
        timer <= 0 ;
        end 
      else begin 
      timer <= timer + 1 ;
      end 
     end 
s1: begin 
    light_a <= 3'b010 ;
     light_b <= 3'b001;
     
     if ( timer == 5 ) begin 
        state <= s2 ;
        timer <= 0 ;
        end 
      else begin 
      timer <= timer + 1 ;
      end 
     end 
s2: begin 
    light_a <= 3'b001 ;
     light_b <= 3'b100;
     if ( timer == 5 ) begin 
        state <= s3 ;
        timer <= 0 ;
        end 
      else begin 
      timer <= timer + 1 ;
      end 
     end 
s3: begin 
    light_a <= 3'b001 ;
     light_b <= 3'b010;
     if ( timer == 5 ) begin 
        state <= s0 ;
        timer <= 0 ;
        end 
      else begin 
      timer <= timer + 1 ;
      end 
     end 
     
default: begin
    state <= s0;
    timer <= 0;
end
endcase 
   end

end
endmodule
