`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2023 01:38:37 PM
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


module uart_sim();

localparam fclk = 100_000_000, br = 230400, nb = 8, deep = 16;
localparam ratio = fclk/br - 1;
localparam nr_trn = 12;
localparam nr_rec = 11;
logic clk, rst, strt, strr;

top uut( .clk(clk), .rst(rst), .rx(rx), .tx(tx));

//simple_receiver #(.fclk(fclk), .baudrate(br), .nb(nb), .deep(nr_rec)) beh_model_rc (
//    .clk(clk), .rst(rst), .str(strr), .rx(tx), .fin(finr)
//    );

simple_transmitter #(.nb(nb), .deep(nr_trn), .ratio(ratio)) beh_model_tr (
    .clk(clk), .rst(rst), .str(strt), .trn(rx), .fin(fint)
    );

initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1'b0;
    #1 rst = 1'b1;
    repeat(5) @(posedge clk);
    #2 rst = 1'b0;
end

initial begin
    strr = 1'b0;
    strt = 1'b0;
    @(negedge rst);
    repeat(ratio/8) @(posedge clk);
    strt = 1'b1;
    $display("Start");
    @(negedge clk);
    strt = 1'b0;
    repeat (nr_trn) @(negedge fint);
    strr = 1'b1;
    repeat(2) @(negedge clk);
    strr = 1'b0;
//    repeat(nr_rec) @(negedge finr);
    
//    #1_000_000 strt = 1'b1;
//    $display("Start");
//    @(negedge clk);
//    strt = 1'b0;
//    repeat (nr_trn) @(negedge fint);
//    strr = 1'b1;
//    repeat(2) @(negedge clk);
//    strr = 1'b0;
//    repeat(nr_rec) @(negedge finr);
end

initial begin
//    repeat(2 * nr_rec + 1) @(negedge finr);
//    #200_000 $finish();
    #1_000_000 $finish();
end

endmodule
