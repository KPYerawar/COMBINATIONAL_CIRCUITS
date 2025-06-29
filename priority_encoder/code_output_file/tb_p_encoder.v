module tb_p_encoder ;
reg d3 ;
reg d2 ;
reg d1 ;
reg d0 ;
wire y1 ;
wire y0 ;
wire e_out ;

p_encoder uut (
.d3(d3),
.d2(d2),
.d1(d1),
.d0(d0),
.y1(y1),
.y0(y0),
.e_out(e_out)
);

initial begin 
$dumpfile("p_encoder.vcd");
$dumpvars(0 , tb_p_encoder);
d3 = 0 ; d2 = 0 ; d1 = 0 ; d0 = 0 ;
#50;
d3 = 0 ; d2 = 0 ; d1 = 0 ; d0 = 1 ;
#50;
d3 = 0 ; d2 = 0 ; d1 = 1 ; d0 = 0 ;
#50;
d3 = 0 ; d2 = 1 ; d1 = 0 ; d0 = 0 ;
#50;
d3 = 1 ; d2 = 0 ; d1 = 0 ; d0 = 0 ;
#50;
$finish ;
end 
endmodule 
