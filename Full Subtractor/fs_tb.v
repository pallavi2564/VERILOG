module fs_tb;
  reg a, b, Bin;
  wire D, Bout;
  
  fs uut(.a(a), .b(b), .Bin(Bin), .D(D), .Bout(Bout));
  
initial begin
  $monitor("At time %0t: a=%b b=%b, Bin=%b, D=%b, Bout=%b",$time, a,b,Bin,D,Bout);
    a = 0; b = 0; Bin = 0; 
  #10 a = 0; b = 0; Bin = 1;
  #10a = 0; b = 1; Bin = 0;
  #10 a = 1; b = 0; Bin = 0; 
   #10 a = 1; b = 0; Bin = 1;
   #10 a = 1; b = 1; Bin = 0;
  end
endmodule
