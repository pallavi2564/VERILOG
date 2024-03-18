module ha(sum,cout,a,b);
  input a,b;
  output sum,cout;
  xor x1(sum,a,b);
  and a5(cout,a,b);
endmodule
