module sr_latch(s,r,q,qb);
input s,r;
output reg q,qb;
always @(*)
begin
  q<= ~(r|qb);
  qb<= ~(s|q);
  end
endmodule
