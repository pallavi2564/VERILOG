module pipo(in,clk,rst,q);
input [3:0]in;
input clk,rst;
output reg [3:0]q;
always@(posedge clk,posedge rst)
begin
if(rst)
   q<=0;
else
   q<=in;
end
endmodule
