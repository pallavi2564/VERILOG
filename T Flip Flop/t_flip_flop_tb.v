module t_flip_flop_tb();
reg t,clk,rst;
wire q;


  t_flip_flop dut( .q(q), .d(d),  .clk(clk), .rst(rst)); 


initial
  $monitor("simtime = %t, clk = %b, t = %b, rst=%b,q = %b", $time, clk, t,rst, q);


initial 
begin
  clk=0;
  rst=0;
     forever #2 clk = ~clk;  
    
end 

initial
 begin 
rst=1;
 t = 0;
 #5
rst=0;
  t= 1;
 #5
 t = 0;
 #5
 t = 1;
 #5
 
$finish();  
end
endmodule
