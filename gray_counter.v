`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2018 12:46:55
// Design Name: 
// Module Name: gray_counter
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
