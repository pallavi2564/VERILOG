module d_ff_tb();
reg d,clk,areset;
wire q;


d_ff dut( .q(q), .d(d),  .clk(clk), .areset(areset)); 


initial
  $monitor("simtime = %t, clk = %b, d = %b, areset=%b,q = %b", $time, clk, d,areset, q);


initial 
begin
  clk=0;
  areset=0;
     forever #2 clk = ~clk;  
     forever #2 areset=~areset;
end 

initial
 begin 

 d = 0;
 #5

 d = 1;
 #5
 d = 0;
 #5
 d = 1;
 #5
 
$finish();  
end
endmodule
