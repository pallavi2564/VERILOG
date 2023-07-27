module comparator(input [3:0] a,input [3:0]b ,output reg l,output reg e,output reg g);
  always @(a or b)
     begin
       if(a > b)   begin  
            l= 0;
            e = 0;
            g = 1;    
       end
       else if(a == b) begin 
            l= 0;
            e= 1;
            g = 0;    
       end
        else   begin 
            l = 1;
            e = 0;
            g =0;
        end 
    end
endmodule
