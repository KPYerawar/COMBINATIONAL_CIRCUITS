`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/10/2025 07:36:02 PM
// Design Name: 
// Module Name: majority_voter
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

module majority_voter(
    input a,
    input b,
    input c,
    output reg majority_out
    );

    always @(*) begin
        case (a + b + c)
            2, 3: majority_out = 1;  
            default: majority_out = 0;
                    endcase
    end

endmodule
