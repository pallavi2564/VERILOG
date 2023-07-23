module shift_register(
    input clk,
    input reset, 
    input load,
    input en,
    input [3:0] data,
    output reg [3:0] q); 
    always@(posedge clk)begin
        if(reset)
            q<=4'd0;
        else if(load)
            q<=data;
        else if(en)
            q<=q>>1;
        else
            q<=q;
    end
endmodule

