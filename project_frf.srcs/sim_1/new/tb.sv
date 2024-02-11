`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2023 11:37:32 AM
// Design Name: 
// Module Name: tb
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


module tb(

    );
    localparam sleep = 3;
    
    reg clk, rst;
    reg [15:0] insig;
    reg enable;
    
    SPI_master #(.period(10), .data_size(16), .idle_time(sleep), .wyprz(5), .end_brake(10), .t_delay(1)) SPI_test(
    .clk(clk), .rst(rst), .en(enable),
    .sclk(sclk),
    .mosi(out),
    .sync(sc),
    .signal(insig)
    );
    
    reg [9:0] add;
    wire [7:0] mem_out;
    ROM_mem #("sin.mem") memory_test (.clk(clk),
    .rst(rst),
    .addr(add),
    .data(mem_out)
    );
    
    initial begin
        #100 add = 9'd3;
        #20 add = 9'b0;
        #10;
        repeat(3) @(negedge clk) add = add + 1;
        @(negedge clk) add = 9'b0;
    end
    
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        #100 rst = 1'b1;
        enable = 1'b0;
        #10 rst = 1'b0;
        insig = 16'b1011011101100011;
        #10 enable = 1'b1;
        #30 enable = 1'b0;
        
        @(posedge sc) insig = 16'b1111000011110000;
        enable = 1'b1;
        #100 enable = 1'b0;
    end
    
    initial
        #7_500 $finish;
    
endmodule
