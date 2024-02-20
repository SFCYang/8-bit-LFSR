`default_nettype none

module lfsr_top (clk, rst, seed, uo_out);
    input clk, rst;
    input [3:0] seed; // seed we will expand to [7:0]
    output uo_out;

    // seed expanding logic
    wire [1:0] xseed;
    wire [7:0] expanded_seed;
    assign expanded_seed = {seed[3:2], xseed, seed[1:0], ~xseed};
    assign xseed = seed[3:2]^seed[1:0];

    lfsr_logic lfsr_logic(
        .clk(clk),
        .rst(rst),
        .seed(expanded_seed),
        .out(uo_out)
    );

endmodule