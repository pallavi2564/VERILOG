`timescale 1ns / 1ps
module or_tb;
  reg a,b;
  wire y;
  or dut(.a(a),.b(b),.y(y));
  $monitor("time=%b, a=%b, b=%b, y=%b ",$time,a,b,y);

  initial begin
    a=1,b=0;
    #10 a=0,b=1;
    #10 a=1,b=1;
    #10 a=0,b=0;
    $finish
  end
endmodule
