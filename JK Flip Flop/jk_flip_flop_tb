module jk_flip_flop_tb();
reg j,k, clk;
wire q;


jk_flip_flop dut(.q(q), .qbar(qbar), .j(j), .k(k), .clk(clk)); 


initial
$monitor("simtime = %g, clk = %b, j = %b, k = %b, q = %b,$time, clk, j, k, q);


initial 
begin
  clk=0;
     forever #10 clk = ~clk;  
end 

initial
 begin 
 j= 1; k= 0;
 #10; j= 0; k= 1; 
 #10; j= 0; k= 0; 
 #10; j= 1; k=1; 
 end 
endmodule
