module tb_alu ;
reg [3:0]in1 ;
reg [3:0]in2 ; 
reg [2:0]select;
wire  [3:0]and1 ; 
wire  [3:0]or1 ;
wire  [3:0]sum ; 
wire  [3:0]sub ; 
wire  [3:0]xor1 ; 
wire  carry ;
wire  borrow ;

alu uut (
.in1(in1),
.in2(in2),
.select(select),
.and1(and1),
.or1(or1),
.sum(sum),
.sub (sub ),
.xor1(xor1),
.carry(carry),
.borrow(borrow)
);

initial begin 
$dumpfile ("tb_alu.vcd");
$dumpvars (0 , tb_alu);
select = 3'b000;
in1 = 4'b1010;
in2 = 4'b1100;
#50;
select = 3'b001;
in1 = 4'b1011;
in2 = 4'b1110;
#50;
select = 3'b010;
in1 = 4'b1010;
in2 = 4'b1110;
#50;
select = 3'b011;
in1 = 4'b1110;
in2 = 4'b1000;
#50;
select = 3'b100;
in1 = 4'b0010;
in2 = 4'b0100;
#50;
end 
endmodule 



