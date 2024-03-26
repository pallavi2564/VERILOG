module even_parity_generator(a,b,c,po,pc);
input a,b,c,po;
output pc;
assign pe=~(a^b^c^pe);
endmodule
