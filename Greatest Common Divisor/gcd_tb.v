module gcd_tb;


  reg [7:0] A;
  reg [7:0] B;
  wire [7:0] gcd;
integer i;

  gcd dut(.A(A), .B(B), .gcd(gcd));
 $monitor("A= %d, B=%d, gcd=%d", A, B,gcd);
initial
begin
{A, B} = 0;
#10;
  for(i = 0; i<10; i =i+1)
begin
A = $random;
B = $random;
#10;
end
end

 $finish;
end

endmodule
