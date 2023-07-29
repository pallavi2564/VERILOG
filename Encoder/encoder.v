module encoder(d, a, b, c);

input [0:7] d;

output a;

output b;

output c;

  or u0(d[4],d[5],d[6],d[7],a);

  or u1(d[3],d[2],d[6],d[7],b);

  or u2(d[1],d[3],d[5],d[7],c);

endmodule
