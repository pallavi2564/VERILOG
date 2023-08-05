module cla_tb;
  reg [3:0]A, B; 
  reg Cin;
  wire [3:0] S;
  wire Cout;

  cla uut(.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));
  

  initial begin
    $monitor("A = %b: B = %b, Cin = %b , S = %b, Cout = %b, A, B, Cin, S, Cout);
   
#3  A = 1; B = 0; Cin = 0; 
 #3    A = 2; B = 4; Cin = 1;
  #3   A = 4'hb; B = 4'h6; Cin = 0;
    A = 5; B = 3; Cin = 1;
  end
endmodule
