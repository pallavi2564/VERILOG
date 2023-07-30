module gcd ( A, B, gcd );


  input [7:0] A, B;
  output  [7:0] gcd;
  reg [7:0] Ain, Bin,gcd;

always @(A or B)
begin
Ain = A; Bin = B;
while( Ain != Bin)
begin
if ( Ain < Bin )
Bin = Bin-Ain;
else
Ain = Ain - Bin;
end
gcd = Ain;
end

endmodule
