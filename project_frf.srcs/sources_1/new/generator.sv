`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2023 04:24:24 PM
// Design Name: 
// Module Name: generator
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


module generator #(parameter addr_max=1024) (
    input clk,
    input rst,
    input sync,
    input [5:0] period,
    output reg [9:0] addr,
    output reg send
    );
    
    localparam move = 3;
    localparam cnt_size = 6+move;
    logic [cnt_size:0] sample_time;// = 100;
    assign sample_time = (period+1) << move;
    
    reg [cnt_size:0] cnt;
    reg [1:0] sc_edge;
    
    always @(posedge clk, posedge rst)
        if(rst)
            cnt <= {cnt_size{1'b0}};
        else if(cnt == sample_time-1)
            cnt <= {cnt_size{1'b0}};
       else
            cnt <= (cnt+1);
    
    // update address value
    always @(posedge clk, posedge rst)
        if(rst)
            addr <= 10'b0;
        else if (cnt == sample_time-1) begin
            addr <= (addr + 1) % addr_max;
        end
   
   // detect falling sync edge
    always @(posedge clk, posedge rst)
        if(rst)
            sc_edge <= 2'b0;
        else
            sc_edge <= {sc_edge[0], sync};
            
    always @(posedge clk, posedge rst)
        if (rst)
            send <= 1'b0;
        else if (cnt == sample_time-1)
            send <= 1'b1; // set the flag when ready to send
        else if(sc_edge[1] & ~sc_edge[0])
            send <= 1'b0; // clear the flag when sent
endmodule
