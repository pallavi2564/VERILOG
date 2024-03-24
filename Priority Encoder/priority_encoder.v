module priority_encoder(i0,i1,i2,i3,a,b,v );
input i0,i1,i2,i3;
output a,b,v;
assign v=i0|i1|i2|i3;
assign a=i3|i2;
assign b=(~i2&i1)|i3;
endmodule
