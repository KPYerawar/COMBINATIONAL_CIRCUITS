`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2025 08:12:19 AM
// Design Name: 
// Module Name: accumulator_register
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


module accumulator_register(
input clk ,
input load ,
input [6:0]in_data,
input rst ,
output reg [7:0] stored_data    );
reg [7:0]accumulator ;

always @(posedge clk  or posedge rst )
begin 
if ( rst ) begin
accumulator <= 8'b00000000;
stored_data <= 8'b00000000;
end
else if ( load ) begin 
accumulator  <= in_data ;
stored_data <= in_data;
end 
else begin
accumulator <= accumulator + in_data;
stored_data <= accumulator ;

end
end
endmodule
