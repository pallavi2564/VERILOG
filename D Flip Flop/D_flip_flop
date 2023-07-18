module d_ff (
    input clk,
    input d, 
    input areset,   // asynchronous reset
    output reg q);
    always@(posedge clk or posedge areset)begin
        if (areset)
            q<=0;
        else
            q<=d;
    end
endmodule
