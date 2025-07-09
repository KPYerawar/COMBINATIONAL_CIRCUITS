`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2025 06:49:27 PM
// Design Name: 
// Module Name: fifo
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


module fifo(
    input clk,
    input rst,
    input write_en,
    input read_en,
    input [7:0] data_in,
    output reg [7:0] data_out,
    output reg full,
    output reg empty
    );

reg [7:0] mem [15:0];
reg [4:0] wr_ptr;
reg [4:0] rd_ptr;
reg [5:0] count;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        wr_ptr <= 0;
        rd_ptr <= 0;
        count  <= 0;
        full   <= 0;
        empty  <= 1;
    end
    else begin
        if (write_en && !full) begin
            mem[wr_ptr] <= data_in;
            wr_ptr <= wr_ptr + 1;
            count  <= count + 1;
        end

        
        if (read_en && !empty) begin
            data_out <= mem[rd_ptr];
            rd_ptr <= rd_ptr + 1;
            count  <= count - 1;
        end

        full  <= (count == 16);
        empty <= (count == 0);
    end
end

endmodule
