`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2023 02:14:24 PM
// Design Name: 
// Module Name: demultiplekser
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


module multiplekser(
    input [1:0] addr,
    input [7:0] in1,
    input [7:0] in2,
    input [7:0] in3,
    input [7:0] in4,
    output [7:0] out
    );
    
    assign out = addr[1]==0 ? (addr[0]==0 ? in1 : in2) : (addr[0]==0 ? in3 : in4);
    
endmodule
