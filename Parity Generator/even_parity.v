module even_parity_generator(a,b,c,pe);
input a,b,c;
output pe;
assign pe=a^b^c;
endmodule
