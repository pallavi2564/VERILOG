module shift_register_tb();        
   
   reg [3:0]data;                  
   reg clk;                   
   reg en;                    
   reg load;            
   reg reset;                  
   wire [3:0] q;        
   
   
  shift_register  dut ( .data (data), .clk (clk), .en (en), .reset (reset), .q(q));

  
   always #10 clk = ~clk;

   initial
   begin
      clk <= 0;
      en <= 0;
      load<=0;
      reset <= 0;
      data <= 4'b1101;
   end

   
   initial
   begin     
	  reset <= 0;     			
      #20 
	  reset <= 1;
       load<=0;
      en <= 1;
          
	  
      repeat (10) @ (posedge clk) 
      data <= ~data;
   
     
      
      
      $finish;
   end

   
   initial
      $monitor ("reset=%0b data=%b, en=%0b, q=%b", reset, data, en,q);
endmodule
