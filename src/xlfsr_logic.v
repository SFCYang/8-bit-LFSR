// LFSR by Sebastian Castro

`default_nettype none

module lfsr_logic(clk, rst, seed, out);
    parameter SEED_SIZE = 8;
    parameter REG_SIZE = 8;
    input clk, rst;
    input [SEED_SIZE-1:0] seed;
    output reg out;

    wire feedback;
    reg [REG_SIZE-1:0] lfsrchain;

    assign feedback = ((lfsrchain[REG_SIZE-1]^lfsrchain[REG_SIZE-3])^lfsrchain[REG_SIZE-4])^lfsrchain[REG_SIZE-2];

    always @(posedge clk) begin
        if (rst) begin
            lfsrchain <= seed;
            out <= 1'b0;
        end
        else begin
            lfsrchain <= {lfsrchain[REG_SIZE-2:0], feedback};
            out <= ~lfsrchain[REG_SIZE-1];
        end
    end
endmodule