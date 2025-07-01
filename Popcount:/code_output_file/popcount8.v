module popcount8(
input [7:0] in ,
output [3:0] count );

assign count = in[0] + in[1] + in[2] + in[3] +
                in[4] + in[5] + in[6] + in[7] ;
                
endmodule 
