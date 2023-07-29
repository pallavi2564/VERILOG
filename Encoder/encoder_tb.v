module encoder_tb;

reg [0:7] d;
wire a,b,c;
encoder uut (.d(d), .a(a), .b(b),.c(c) );

initial begin

#10 d=8’b10000000;

#10 d=8’b01000000;

#10 d=8’b00100000;

#10 d=8’b00010000;

#10 d=8’b00001000;

#10 d=8’b00000100;

#10 d=8’b00000010;

#10 d=8’b00000001;


end

endmodule
