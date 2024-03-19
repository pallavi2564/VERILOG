module csa( 
input [3:0]A,B,
input cin,
output cout,
output [3:0]s);
wire a,b,c,d,p,q,r,l,s1,s2,s3,s4,s5,s6,s7,s8;
fa f1(A[0],B[0],0,a,s1);
fa f2(A[1],B[1],a,b,s2);
fa f3(A[2],B[2],b,c,s3);
fa f4(A[3],B[3],c,d,s4);

fa f5(A[0],B[0],1,p,s5);
fa f6(A[1],B[1],p,q,s6);
fa f7(A[2],B[2],q,r,s7);
fa f8(A[3],B[3],r,l,s8);

mux m1(s1,s5,cin,s[0]);
mux m2(s2,s6,cin,s[1]);
mux m3(s3,s7,cin,s[2]);
mux m4(s4,s8,cin,s[3]);
mux m5(d,l,cin,cout);
endmodule
