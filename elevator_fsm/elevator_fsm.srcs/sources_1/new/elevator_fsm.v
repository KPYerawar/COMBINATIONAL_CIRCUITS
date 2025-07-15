`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/15/2025 08:19:48 AM
// Design Name: 
// Module Name: elevator_fsm
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


module elevator_fsm(
    input clk,
    input rst,
    input [2:0] in_floor,          
    input [2:0] default_floor,      
    output reg moving_up,
    output reg moving_down,
    output reg [2:0] current_floor,
    output reg stop
);

reg [1:0] state;

localparam IDLE = 2'b00;
localparam UP = 2'b01;
localparam DOWN = 2'b10;
localparam HALT = 2'b11;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= IDLE;
        current_floor <= default_floor;
        moving_up <= 0;
        moving_down <= 0;
        stop <= 1;
    end
    else begin
        case (state)

        IDLE: begin
            stop <= 1;
            moving_up <= 0;
            moving_down <= 0;

            if (in_floor > current_floor)
                state <= UP;
            else if (in_floor < current_floor)
                state <= DOWN;
            else
                state <= HALT;
        end

        UP: begin
            stop <= 0;
            moving_up <= 1;
            moving_down <= 0;

            if (current_floor < in_floor)
                current_floor <= current_floor + 1;
            
            if (current_floor + 1 == in_floor)
                state <= HALT;
        end

        DOWN: begin
            stop <= 0;
            moving_up <= 0;
            moving_down <= 1;

            if (current_floor > in_floor)
                current_floor <= current_floor - 1;
            
            if (current_floor - 1 == in_floor)
                state <= HALT;
        end

        HALT: begin
            moving_up <= 0;
            moving_down <= 0;
            stop <= 1;
            state <= IDLE;
        end

        endcase
    end
end

endmodule

