module comparator_tb;

   
  reg [3:0] a;
  reg [3:0]b;
    wire l;
    wire e;
    wire g;

  comparator uut (.a(a),.b(b),.l(l),.e(e),.g(g) );

    initial begin
        
        a = 10;
        b= 12;
        #100;
        a = 15;
       b = 11;
        #100;
       a = 10;
        b = 10;
        #100;
    end
      
endmodule
