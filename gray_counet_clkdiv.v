`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2018 17:40:29
// Design Name: 
// Module Name: gray_counet_clkdiv
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module gray_counter_clkdiv (clk, reset, count);
    input clk, reset;
    output [7:0] count;
    reg [7:0] y;
reg [27:0] clkdiv;
    always@ (posedge clk)
begin
	if(!reset) clkdiv=0;
else clkdiv=clkdiv+1;
end
always@(posedge clkdiv[25])
    begin
    if (! reset) y=0;
    else y=y+1; 
    end 
    assign count={y[7], y[7]^y[6], y[6]^y[5], y[5]^y[4], y[4]^y[3], y[3]^y[2], y[2]^y[1], y[1]^y[0] };
endmodule

