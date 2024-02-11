`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2023 04:24:24 PM
// Design Name: 
// Module Name: SPI_master
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


module SPI_master #(parameter period=10000, parameter data_size=16, parameter idle_time=1000, parameter wyprz=1000, parameter end_brake=1000, parameter t_delay=1000) (
    input clk, rst, en,
    output logic sclk,
    output logic mosi,
    output sync,
    input [data_size-1:0] signal
    );
    
    typedef enum {idle, start, transmit, stop} SPIst;
    SPIst st,nst;
    
    localparam counter_size = $clog2(period);
    localparam t_cnt_size = $clog2(((idle_time>wyprz) ? (idle_time>end_brake ? idle_time : end_brake) : (wyprz>end_brake ? wyprz : end_brake))); 
    reg [t_cnt_size-1:0] t_cnt;
    
    localparam size_size = $clog2(data_size+1);
    reg [size_size-1:0] d_cnt;
    
    reg [data_size-1:0] cmd;
    reg [counter_size-1:0] cnt;
    
    reg [1:0] sclk_negedge;
    
    // detektor opadającego zbocza sclk
    always @(posedge clk, posedge rst)
        if (rst)
            sclk_negedge <= 2'b0;
        else
            sclk_negedge <= {sclk_negedge[0], sclk};
    
    //generator sygnału zegara sclk
    always @(posedge clk, posedge rst)
        if(rst) begin
            cnt <= {counter_size{1'b0}};
            sclk <= 1'b0;
        end
        else if(cnt == period-1) begin
            cnt <= {counter_size{1'b0}};
            sclk <= ~sclk;
        end
        else if(st == transmit)
            cnt <= cnt + 1'b1;
        else
            sclk <= 1'b0;
            
    // odliczanie interwałów czasu
    always @(posedge clk, posedge rst)
        if (rst)
            t_cnt <= {t_cnt_size{1'b0}};
        else if(st == idle)
            t_cnt <= (t_cnt + 1'b1) % idle_time;
        else if(st == start)
            t_cnt <= (t_cnt + 1'b1) % wyprz;
        else if(st == stop)
            t_cnt <= (t_cnt + 1'b1) % end_brake;
        else if(st == transmit)
            if(sclk == 1'b1)
                t_cnt <= 0;
            else if(t_cnt < t_delay)
                t_cnt <= t_cnt + 1'b1;
    
    
    // licznik cykli zegara
    always @(posedge clk, posedge rst)
        if(rst)
            d_cnt <=  {size_size+1 {1'b0}};
        else if(d_cnt >= data_size)
            d_cnt <= {size_size+1 {1'b0}};
        else if(sclk_negedge[1] & ~sclk_negedge[0])
            d_cnt <= (d_cnt + 1'b1) % (data_size+1);
            
   // maszyna stanów
   always @(posedge clk, posedge rst)
        if(rst)
            st <= idle;
        else
            st <= nst;
    
    always @*
        case(st)
        idle: nst = t_cnt >= idle_time-1 & en ? start : idle;
        start: nst = t_cnt >= wyprz-1 ? transmit : start;
        transmit: nst = d_cnt < data_size ? transmit : stop;
        stop: nst = t_cnt >= end_brake-1 ? idle : stop;
        default: nst = idle;
    endcase
     
     
     // transmisja
     always @(posedge clk, posedge rst)
        if(rst)
            mosi <= 1'b0;
        else if(st==idle)
            mosi <= 1'b0;
        else if(t_cnt == t_delay)
            mosi <= cmd[data_size-d_cnt-1];
            
     assign sync = st==idle;
     
     // wczytywanie danych
     always @(posedge clk, posedge rst)
        if(rst)
            cmd <= {data_size{1'b0}};
        else if(st==idle & en)
            cmd <= signal;
      
endmodule
