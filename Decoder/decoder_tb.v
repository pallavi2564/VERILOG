module decoder_tb;
  reg a0,a1;
  wire y0,y1,y2,y3;
  
  priority_encoder uut(a0,a1,y0,y1,y2,y3);
  
  initial begin
   a0=1,a1=0;
    #10;
    a0=0,a1=1;
    #10;
    a0=1,a1=1;
    #10;
    a0=0;a1=0;
  end
endmodule
