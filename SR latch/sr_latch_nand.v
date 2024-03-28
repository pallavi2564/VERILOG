module sr_latch_nand(s,r,q,qb);
input s,r;
output reg q,qb;
always @(*)
begin
  q<= ~(~s|qb);
  qb<= ~(~r|q);
  end
endmodule
