module mux(input [3:0]i,input s0,input s1,output y );
assign y=(~s0&~s1&i[0])|(~s1&s0&i[1])|(~s0&s1&i[2])|(s0&s1&i[3]);
endmodule
