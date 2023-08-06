`timescale 1ns / 1ps
module not_tb;
  reg a;
  wire y;
  and dut(.a(a),.y(y));
  $monitor("time=%b, a=%b,  y=%b ",$time,a,y);

  initial begin
    a=1;
    #10 a=0;
    $finish
  end
endmodule
