`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2018 12:55:04
// Design Name: 
// Module Name: gray_counter_tb
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


module gray_counter_tb( );
    reg clk,reset;
    wire [7:0] count;
    gray_counter dut( clk,reset,count);
    always #5 clk=~clk;
    initial begin
    clk=0; reset=0;
    
    #30 reset=1;
    end
    
endmodule
