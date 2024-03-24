module even_parity_generator(a,b,c,p );
input a,b,c;
output p;
assign p=a^b^c;
endmodule
