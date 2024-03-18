module vedic_2x2(a,b,m);
  input [1:0]a;
  input [1:0]b;
  output [3:0]m;
  wire [2:0]s;
  wire c;
  and a1(m[0],a[0],b[0]);
  and a2(s[0],a[0],b[1]);
  and a1(s[1],a[1],b[0]);
  ha h1(.sum(m[1]),.cout(c),.a(s[0]),.b(s[1]));
  and a4(s[2],a[1],b[1]);
  ha h2(.sum(m[2]),.cout(m[3]),.a(c),.b(s[2]));
endmodule
