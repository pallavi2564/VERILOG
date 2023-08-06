module xnor(
  input a,b;
  output y;)
  assign y=~(a^b);
endmodule
