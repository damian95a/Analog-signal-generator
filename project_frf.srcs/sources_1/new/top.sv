`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2023 04:24:24 PM
// Design Name: 
// Module Name: top
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


module top #(parameter clk_p=8, parameter data_size=16, parameter idle_time=15, parameter wyprz=2, parameter end_brake=5, parameter t_delay=4)
    (
    input clk,
    input rst,
    output tx,
    input rx,
    output sclk,
    output mosi,
    output sync//,
    //output outsclk,outmosi, outsync
    );
    
    logic power_up;
    logic [5:0] amp;
    logic [5:0] freq;
    logic [1:0] crv;
    
    localparam deep = 16;
    localparam mwidth = $clog2(deep);

    wire [mwidth-1:0] maddr;
    wire [7:0] rdat, tdat;
    
    wire [3:0] s_axi_awaddr;
    wire [31:0] s_axi_wdata;
    wire [1:0] s_axi_bresp;
    wire [3:0] s_axi_araddr;
    wire [31:0] s_axi_rdata;
    
    assign outsclk = sclk;
    assign outmosi = mosi;
    assign outsync = sync;

    
    //localparam DAC_cmd_t = 8'b00010011;
    logic [7:0] DAC_cmd;
    always @(posedge rst, posedge clk)
    if(rst) 
        DAC_cmd <= 8'b00011011;
    else
        DAC_cmd <= {4'b0001,~power_up,3'b011}; 
        
  
    // memory outputs
    wire [7:0] mem_out; // multiplexer output
    wire [7:0] sin_out;
    wire [7:0] abs_sin_out;
    wire [7:0] tri_out;
    wire [7:0] saw_out;
    
    wire [9:0] mem_addr;
    
    localparam sample_time = 15;
    wire [30:0] p = 30'd150;
    
    logic [7:0] scale_mem;
    
    logic [7:0] scaled;
//    assign scale_mem =  mem_out*2/3;

    generator #(.addr_max(1024)) loader (
    .clk(clk), .rst(rst),
    .sync(sync),
    .period(freq),
    .addr(mem_addr),
    .send(enable)
    );
    
    ROM_mem #("sin.mem") sin_ROM (.clk(clk),
    .rst(rst),
    .addr(mem_addr),
    .data(sin_out)
    );
    
    ROM_mem #("abs_sin.mem") abs_sin_ROM (.clk(clk),
    .rst(rst),
    .addr(mem_addr),
    .data(abs_sin_out)
    );
    
    ROM_mem #("triangle.mem") tri_ROM (.clk(clk),
    .rst(rst),
    .addr(mem_addr),
    .data(tri_out)
    );
    
    ROM_mem #("saw.mem") saw_ROM (.clk(clk),
    .rst(rst),
    .addr(mem_addr),
    .data(saw_out)
    );
    
    multiplekser choose_ROM (.addr(crv), .in1(sin_out), .in2(abs_sin_out), .in3(tri_out), .in4(saw_out), .out(mem_out));
    
    SPI_master #(.period(clk_p), .data_size(data_size), .idle_time(idle_time), .wyprz(wyprz), .end_brake(end_brake), .t_delay(t_delay)) DAC(
    .clk(clk), .rst(rst), .en(enable),
    .sclk(sclk),
    .mosi(mosi),
    .sync(sync),
    .signal({DAC_cmd,scaled})
    );
    
    axi_slave_uart axi_slave(
    .s_axi_aclk(clk),        // input wire s_axi_aclk
    .s_axi_aresetn(~rst),  // input wire s_axi_aresetn
    .interrupt(),          // output wire interrupt
  
    .s_axi_awaddr(s_axi_awaddr),    // input wire [3 : 0] s_axi_awaddr
    .s_axi_awvalid(s_axi_awvalid),  // input wire s_axi_awvalid
    .s_axi_awready(s_axi_awready),  // output wire s_axi_awready
  
    .s_axi_wdata(s_axi_wdata),      // input wire [31 : 0] s_axi_wdata
    .s_axi_wstrb(4'b1111),      // input wire [3 : 0] s_axi_wstrb
    .s_axi_wvalid(s_axi_wvalid),    // input wire s_axi_wvalid
    .s_axi_wready(s_axi_wready),    // output wire s_axi_wready
  
    .s_axi_bresp(s_axi_bresp),      // output wire [1 : 0] s_axi_bresp
    .s_axi_bvalid(s_axi_bvalid),    // output wire s_axi_bvalid
    .s_axi_bready(s_axi_bready),    // input wire s_axi_bready
  
    .s_axi_araddr(s_axi_araddr),    // input wire [3 : 0] s_axi_araddr
    .s_axi_arvalid(s_axi_arvalid),  // input wire s_axi_arvalid
    .s_axi_arready(s_axi_arready),  // output wire s_axi_arready
  
    .s_axi_rdata(s_axi_rdata),      // output wire [31 : 0] s_axi_rdata
    .s_axi_rresp(),      // output wire [1 : 0] s_axi_rresp
    .s_axi_rvalid(s_axi_rvalid),    // output wire s_axi_rvalid
    .s_axi_rready(s_axi_rready),    // input wire s_axi_rready
  
    .rx(rx),                        // input wire rx
    .tx(tx)                        // output wire tx
    );
    
    axi_master #(.addrw(mwidth)) master(.clk(clk), .rst(rst),
    .awadr(s_axi_awaddr), .awvld(s_axi_awvalid), .awrdy(s_axi_awready),
    .wdat(s_axi_wdata), .wvld(s_axi_wvalid), .wrdy(s_axi_wready),
    .bresp(s_axi_bresp), .bvld(s_axi_bvalid), .brdy(s_axi_bready),
    .aradr(s_axi_araddr), .arvld(s_axi_arvalid), .arrdy(s_axi_arready),
    .rdat(s_axi_rdata), .rvld(s_axi_rvalid), .rrdy(s_axi_rready),
    .maddr(maddr), .rd(rd), .wr(wr), .recdat(rdat), .trdat(tdat));
    
    translator trans(.rst(rst), .clk(clk), .data(rdat),
    .power_up(power_up), .crv(crv), .amp(amp), .freq(freq));
    
    scaler div(.b(amp), .in(mem_out), .out(scaled));
endmodule
