`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/18/2025 07:33:34 PM
// Design Name: 
// Module Name: spi_master
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

module spi_master(
input clk,        
input reset,       
input start,      
input [7:0] tx_data, 
input miso,        
output reg sclk, 
output reg mosi,  
output reg cs,     
output [7:0] rx_data,
output busy        
);

reg [7:0] tx_shift;  
reg [7:0] rx_shift;   
reg [2:0] bit_count;  
reg phase;            

assign busy = cs ? 0 : 1;         
assign rx_data = rx_shift;          

always @(posedge clk or posedge reset) begin
 if (reset) begin
 cs <= 1;       
 sclk <= 0;      
 mosi <= 0;
 bit_count <= 0;
 phase <= 0;
 end
 else begin
   if (cs) begin 
      if (start) begin
      cs <= 0;         
      tx_shift <= tx_data; 
      rx_shift <= 0;    
      bit_count <= 0;    
        phase <= 0;       
    end
       end
    else begin 
      if (phase == 0) begin 
          mosi <= tx_shift[7]; 
         sclk <= 1;           
         phase <= 1;         
     end
            else begin 
         sclk <= 0;                     
        rx_shift <= {rx_shift[6:0], miso}; 
        tx_shift <= {tx_shift[6:0], 1'b0}; 
                
       if (bit_count == 7) begin 
         cs <= 1;  
         end
          else begin
             bit_count <= bit_count + 1;
           end
                
         phase <= 0; 
end
end
   end
end
endmodule
