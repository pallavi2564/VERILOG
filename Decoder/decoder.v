module decoder(a0,a1,y0,y1,y2,y3);
input y0,y1,y2,y3;
output reg a0,a1;

assign a1 = y3 + y2;
assign a0 = y3 + ((~y2)&y1);

endmodule
