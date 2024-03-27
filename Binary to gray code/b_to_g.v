module b_to_g(b,g);
input [3:0]b;
output [3:0]g;
genvar i;
for(i=0; i<3; i=i+1)
begin
   assign g[i]=b[i]^b[i+1];
end
assign g[3]=b[3];
endmodule
