/* fsm sequence detector 101 */


module fsm_101(
input clk ,
input din,
input rst,
output reg dout
    );
parameter s0 = 2'b00 , s1 = 2'b01 , s2 = 2'b10 ;
reg [1:0 ] current_state , next_state ;

always @(posedge clk ) begin
if ( rst ) begin
current_state <= s0 ;
dout <= 0 ;
end
else 
current_state <= next_state ;
end  

always @(*) begin 
next_state = current_state ;
dout = 0 ;

case (current_state) 
s0 :  begin 
          if (din) 
             next_state = s1 ;
          else 
           next_state = s0 ;
           end
s1 : begin 
   if ( din) 
    next_state = s1 ;
    else 
    next_state = s2 ;
    end
s2 : begin 
  if (din ) begin 
  next_state = s1 ;
  dout = 1 ;
  end 
  else 
  next_state = s0 ;
  end 
  default : next_state = s0 ;
endcase
end   
  /* ------------------------------------testbench--------------------------------------------*/
  
module tb;
reg clk ;
reg din ;
reg rst ;
wire dout;

fsm_101 dut (
.clk(clk) ,
.rst(rst) ,
.din(din) ,
.dout(dout) );

always #20 clk = ~clk ;

initial begin 
$dumpfile ( "dump.vcd");
$dumpvars ( 0 , tb ) ;
clk = 0 ;
rst = 1 ;
#50 ;
rst = 0 ;

repeat (10 ) begin 
din = $random % 2 ;
#30 ;
end 
$finish ;
end 
initial begin 
$monitor (" t = %0t ns | din = %b |dout = %b |  state = %0d " , 
                $time , din , dout  , dut.current_state );
                end     
endmodule
          
 
endmodule
