`timescale 1ns / 1ps
module nand_tb;
  reg a,b;
  wire y;
  nand dut(.a(a),.b(b),.y(y));
  $monitor("time=%b, a=%b, in_b=%b, y=%2b ",$time,a,b,y);

  initial begin
    a=1,b=0;
    #10 a=0,b=1;
    #10 a=1,b=1;
    #10 a=0,b=0;
    $finish
  end
endmodule
