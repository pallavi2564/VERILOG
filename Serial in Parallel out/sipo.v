module sipo(a,clk,rst,q);
input a;
input clk,rst;
output reg [3:0]q;
always @(posedge clk,posedge rst)
begin
if(rst)
   q<=0;
else
   q <= {a,q[3:1]};
   
end
endmodule
