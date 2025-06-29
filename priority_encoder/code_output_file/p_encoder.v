module p_encoder ( input d0 , d1 , d2 , d3 ,
output y1 , y0 , e_out );

assign y1 = d3 + d2 ;
assign y0 = d3 + ((~ (d2)) & d1) ;
assign e_out =  d3 + d2 + d1 + d0 ;

endmodule 

