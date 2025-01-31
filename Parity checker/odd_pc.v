module odd_parity_generator(a,b,c,po,pc);
input a,b,c,po;
output pc;
  assign pc=~(a^b^c^po);
endmodule
