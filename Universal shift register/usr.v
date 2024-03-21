module usr(clr,clk,right_in,left_in,sel,par_in,out);
    input clr,clk,right_in,left_in;
    input [1:0]sel;
    input [15:0]par_in;
    output reg[15:0]out;
    
    always @(posedge clk)
    begin
        if(clr)
            out=16'b0000000000000000;
    
        else
        begin
            case(sel)
            2'b00: out=out;         //No Change
            2'b01: out={right_in,out[15:1]}; // Right Shift
            2'b10: out={out[14:0],left_in}; // Left Shift
            2'b11: out=par_in; //Parallel Load
            endcase
        end
    
    end
endmodule
