module odd_parity(a,b,c,po );
input a,b,c;
output po;
assign po=(c^~(a^b));
endmodule
