module even_parity_generator(a,b,c,pe,pc);
input a,b,c,pe;
output pc;
assign pe=a^b^c^pe;
endmodule
