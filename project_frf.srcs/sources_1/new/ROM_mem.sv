`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2023 04:24:24 PM
// Design Name: 
// Module Name: ROM_mem
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


module ROM_mem #(parameter filename="sin.mem") (
    input clk,
    input rst,
    input [9:0] addr,
    output reg [7:0] data
    );
    
    reg [7:0] sample[0:1023];
    
    initial
        $readmemh(filename, sample);
    
    always @(posedge clk, posedge rst)
        if(rst)
            data <= 8'b0;
        else
            data <= sample[addr];
    
endmodule
