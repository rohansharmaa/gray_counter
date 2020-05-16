`timescale 1ns / 1ps

module gray_counter( clk,reset,count);
    input clk,reset;
    output [7:0] count;
    reg [7:0] y;
    always@(posedge clk)
    begin
    if(!reset) y=0;
    else y=y+1; 
    end
    
    assign count={y[7],y[7]^y[6],y[6]^y[5],y[5]^y[4],y[4]^y[3],y[3]^y[2],y[2]^y[1],y[1]^y[0]};
    
endmodule
