module array_2(input [1:0]a,input [1:0]b,output[3:0]m);
wire p,q,r,c;
assign m[0]=a[0]&b[0];
assign p=a[0]&b[1];
assign q=a[1]&b[0];
assign r=a[1]&b[1];
ha h1(p,q,m[1],c);
ha h2(r,c,m[2],m[3]);

endmodule
