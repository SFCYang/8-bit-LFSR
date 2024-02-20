`default_nettype none
`timescale 1ps/1ps

module tb ();

    // VCD dump.Open in gtkwave.
    initial begin
        $dumpfile("tb.vcd");
        $dumpvars(0, tb);
        #1;
    end

    reg clk;
    reg rst;
    reg [3:0] seed;
    wire out;

    lfsr_top user_project (
        `ifdef GL_TEST
            .VPWR(1'b1),
            .VGND(1'b0),
        `endif
        
        .clk    (clk),
        .rst    (rst),
        .seed   (seed),
        .out    (out));
endmodule

    

    