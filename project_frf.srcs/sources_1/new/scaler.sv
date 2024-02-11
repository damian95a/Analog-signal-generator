`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2023 04:15:27 PM
// Design Name: 
// Module Name: scaler
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


module scaler(
    input [5:0] b,
    input [7:0] in,
    output [7:0] out
    );
    assign out = in - b[5]*(in>>1) - b[4]*(in>>2) - b[3]*(in>>3) - b[2]*(in>>4) - b[1]*(in>>5) - b[0]*(in>>6);
    
endmodule
