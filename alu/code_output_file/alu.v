module alu ( input [3:0]in1 , 
input [3:0]in2 , 
input [2:0]select,
output reg [3:0]and1 , 
output reg [3:0]or1 , 
output reg [3:0]sum , 
output reg [3:0]sub , 
output reg [3:0]xor1 , 
output reg carry , 
output reg borrow 
);
 always @(*) begin

    and1 = 4'b0000;
    or1 = 4'b0000;
    sum = 4'b0000;
    sub = 4'b0000;
    xor1 = 4'b0000;
    carry = 0;
    borrow = 0;

    case (select)
        3'b000: {carry, sum} = in1 + in2;
        3'b001: {borrow, sub} = in1 - in2;
        3'b010: and1 = in1 & in2;
        3'b011: or1 = in1 | in2;
        3'b100: xor1 = in1 ^ in2;
        default: ; 
    endcase
end

endmodule
  

