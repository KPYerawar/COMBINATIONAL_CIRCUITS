`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2025 06:44:44 PM
// Design Name: 
// Module Name: rom
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


module rom(
    input [3:0] in_address,
    output [7:0] out_instructions
    );
    
    reg [7:0] mem [15:0];
    
    
    initial begin 
    mem[0]  = 8'b00010010;  // LOAD R1, #2
        mem[1]  = 8'b00100101;  // ADD  R1, R5
        mem[2]  = 8'b00110110;  // SUB  R1, R6
        mem[3]  = 8'b01000011;  // AND  R0, R3
        mem[4]  = 8'b01010001;  // OR   R0, R1
        mem[5]  = 8'b01100010;  // XOR  R0, R2
        mem[6]  = 8'b01110000;  // NOT  R0
        mem[7]  = 8'b10000010;  // JMP  to address 2
        mem[8]  = 8'b10010001;  // JZ   to address 1
        mem[9]  = 8'b10100000;  // STORE R0 to MEM
        mem[10] = 8'b10110011;  // LOAD  R3 from MEM
        mem[11] = 8'b11000000;  // NOP
        mem[12] = 8'b11010000;  // HALT
        mem[13] = 8'b00000000;  // Reserved
        mem[14] = 8'b00000000;  // Reserved
        mem[15] = 8'b00000000;  // Reserved
  
end 
assign out_instructions = mem[in_address];
endmodule
