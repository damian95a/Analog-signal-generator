module translator (
    input rst,
    input clk,
    input [7:0] data,
    output reg power_up,
    output reg [1:0] crv,
    output reg [5:0] amp,
    output reg [5:0] freq
    );

    always @(posedge clk, posedge rst) begin
        if(rst) begin
            power_up <= 1'b0;
            crv <= 2'b00;
            amp <= 4'b0000;
            freq <= 4'b0000;
        end
        else
            casez (data)
                8'b00111100 :
                    power_up <= 1'b0;
                8'b100000zz : begin
                    power_up <= 1'b1;
                    crv <= data[1:0];
                end
                8'b01zzzzzz :
                    freq <= data[5:0];
                8'b11zzzzzz :
                    amp <= data[5:0];
                default:;
            endcase
    end

endmodule