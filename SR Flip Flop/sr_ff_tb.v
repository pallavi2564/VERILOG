module sr_ff_tb;
  wire clk,rst,s,r;
  reg q;
  sr_ff uut(.clk(clk),.rst(rst),.s(s),.r(r),.q(q));
  $monitor("simtime=%g,clk=%b,rst=%b,s=%b,r=%b,q=%b,%time,clk,rst,s,r,q);
     initial begin
       clk=0;
       forever #10 clk=~clk;
     end
     initial begin
       s=0,r=0;
       #10; s=0,r=1;
       #10; s=1,r=0;
       #10,s=1,r=1;
     end
endmodule
