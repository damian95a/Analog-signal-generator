`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2023 12:53:03 PM
// Design Name: 
// Module Name: axi_master
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


module axi_master #(parameter addrw = 16) (
    input clk, rst,
    output logic[3:0] awadr, output logic awvld, input awrdy,
    output[31:0] wdat, output logic wvld, input wrdy,
    input[1:0] bresp, input bvld, output logic brdy,
    output logic[3:0] aradr, output logic arvld, input arrdy,
    input[31:0] rdat, input rvld, output logic rrdy,
    output logic rd, wr, output logic[addrw-1:0] maddr, output logic[7:0] recdat, input [7:0] trdat);

typedef enum {ReadStatus, WaitStatus, Read, Write, WaitRead, Command, WaitWrite, WaitResp} states;
states st, nst;

//transmission direction flag {'1'-recieve, '0'-send}
//logic rec_trn;
localparam rec_trn = 1'b1;

//presence of data in Rx, flag
wire rfifo_valid = ((st == WaitStatus) & rvld) ? rdat[0]: 1'b0;
//presence of data in Tx, flag
wire tfifo_full = ((st == WaitStatus) & rvld) ? rdat[3]: 1'b0;

//command flag {'1'-command, '0'-data}
//logic cmdm;
localparam cmdm = 1'b0;

//number od data from commends {StartFrameIn, StartFrameOut}
//logic[5:0] maxd;
localparam maxd = 6'b000001;

//addres counter
logic [addrw-1:0] mmaddr;

//recieve address increment, flag
wire incar = ((st == WaitRead) & ~cmdm & rvld & rec_trn & (maddr<maxd));
//localparam incar = 1'b1;
//transmit address increment, flag
wire incat = ((st == WaitWrite) & cmdm & wrdy & ~rec_trn & (maddr<maxd));

always @(posedge clk, posedge rst)
    if(rst)
        st <= ReadStatus;
    else
        st <= nst;

always @* begin
    nst = ReadStatus;
    case(st)
        ReadStatus: nst = WaitStatus;
        WaitStatus: if(rec_trn)
                        nst = rfifo_valid ? (rvld ? Read : WaitStatus) : ReadStatus;
                    else
                        nst = tfifo_full ? ReadStatus : (rvld ? Write : WaitStatus);
        Read: nst = WaitRead;
        Write: nst = WaitWrite;
//        WaitRead: nst = rvld ? (rdat[7] ? Command : ReadStatus) : WaitRead;
        WaitRead: nst = rvld ? Command : WaitRead;
        Command: nst = ReadStatus;
        WaitWrite: nst = awrdy ? WaitResp : WaitWrite;
        WaitResp: nst = bvld ? ReadStatus : WaitResp;
    endcase
end

//command decoding
//always @(posedge clk, posedge rst)/////////////////////////////////!!!!!!!!!!!!!!!! synchronicznie
//    if(rst) begin
//        {rec_trn, cmdm} <= 2'b11;
//        rec_trn = 1'b1;
//        maxd <= 6'b0;
//    end
//    else if(st == Command) begin
//        {rec_trn, cmdm} <= 2'b11;
//        rec_trn = 1'b1;
//        maxd <= rdat[5:0];
//        case(rdat[7:6])
//            2'b10:;// cmdm <= (rdat[5:0] == 6'b0) ? 1'b1 : 1'b0;
//            2'b11: rec_trn <= 1'b0;
//        endcase
//    end
//    else if(st == WaitResp & maddr == maxd)
//        {rec_trn, cmdm} <= 2'b11;
//        rec_trn = 1'b1;

//memory address
assign maddr = rec_trn ? mmaddr : (mmaddr + 1);
always @(posedge clk)
    if(rst)
        mmaddr <= {addrw{1'b0}};
    else if(incar | incat)
        mmaddr <= mmaddr + 1'b1;
    else if((st == WaitResp & mmaddr == maxd) | st == Command)
        mmaddr <= {addrw{1'b0}};

//read channels AR, R
always @(posedge clk, posedge rst)
    if(rst)
        aradr <= 4'b0;
    else if(st == ReadStatus)
        aradr <= 4'h8;
    else if(st == Read)
        aradr <= 4'h0;

always @(posedge clk, posedge rst)
    if(rst)
        arvld <= 1'b0;
    else if(st == ReadStatus | st == Read)
        arvld <= 1'b1;
    else if(arrdy)
        arvld <= 1'b0;

always @(posedge clk, posedge rst)
    if(rst)
        rrdy <= 1'b0;
    else if((st == WaitStatus | st == WaitRead) & rvld)
        rrdy <= 1'b1;
    else
        rrdy <= 1'b0;

always @(posedge clk, posedge rst)
    if(rst)
        recdat <= 8'b0;
    else if(incar)
        recdat <= rdat[7:0];

//save to memory
always @(posedge clk)
    if(rst)
        wr <= 1'b0;
    else
        wr <= incar;

//saving channels AW, W, B
always @(posedge clk, posedge rst)
    if(rst)
        awadr <= 4'b0;
    else if(st == Write | st == WaitWrite)
        awadr <= 4'h4;
    else
        awadr <= 4'h0;
        
always @(posedge clk, posedge rst)
    if(rst)
        awvld <= 1'b0;
    else if(st == WaitWrite)
        awvld <= 1'b1;
    else if(awrdy)
        awvld <= 1'b0;

always @(posedge clk, posedge rst)
    if(rst)
        wvld <= 1'b0;
    else if(st == WaitWrite)
        wvld <= 1'b1;
    else if(awrdy)
        wvld <= 1'b0;

assign wdat = (st == WaitWrite) ? {24'b0,trdat} : 32'b0;

always @(posedge clk, posedge rst)
    if(rst)
        brdy <= 1'b0;
    else if(st == Write)
        brdy <= 1'b1;
    else if(bvld)
        brdy <= 1'b0;

//memory read
always @(posedge clk)
    if(rst)
        rd <= 1'b0;
    else
        rd <= (st==Write);

endmodule




