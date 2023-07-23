`timescale 1ns / 1ps  

module tb_alu;

 reg[7:0] A,B;
  reg[3:0] sel;

  wire[7:0] out;
  
 integer i;
 alu dut(
   .A(A),.B(B),                  
   .sel(sel),
   .out(out));
    initial begin
   
      A = 8'h0A;
      B = 8'h02;
      sel = 4'h0;
      
      for (i=0;i<=15;i=i+1)
      begin
       sel =sel + 8'h01;
       #10;
      end;
      
      A = 8'hF6;
      B = 8'h0A;
      
    end
endmodule
