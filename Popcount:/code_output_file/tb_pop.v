module tb_pop ;
reg [7:0] in ;
wire [3:0] count ;

popcount8 uut (
.in(in) ,
.count(count)
);

initial begin 
$dumpfile ( "out.vcd");
$dumpvars ( 0 , tb_pop);

repeat (10) begin 
in = $random % 64 ;
#10 ;
end 
$finish;
end
endmodule 
