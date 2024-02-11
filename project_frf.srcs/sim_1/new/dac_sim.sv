`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2023 03:40:17 PM
// Design Name: 
// Module Name: dac_sim
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


module dac_sim(
        
    );
    
    reg clk, rst;
    
    top #(.clk_p(10), .data_size(16), .idle_time(5), .wyprz(3), .end_brake(3), .t_delay(3)) T
    (
    .clk(clk), .rst(rst),
    //.tx(tx), .rx(rx),
    .sclk(sclk),
    .mosi(mosi),
    .sync(sync)
    );

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        #100 rst = 1'b1;
        #10 rst = 1'b0; 
    end
    
    initial
        #20000 $finish;
    
endmodule
