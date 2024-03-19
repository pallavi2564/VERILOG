module mux(input i1,input i2,input sel,output y);
 assign y=(~sel&i1)|(sel&i2);
endmodule
