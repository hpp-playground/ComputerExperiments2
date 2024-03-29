`include "bcd1.v"

module bcd2 (clk, reset, x, bcd2_out);
  input clk, reset, x;
  output [7:0] bcd2_out;

  wire bcd1a_clk;
  wire bcd1a_reset;
  wire bcd1a_x;
  wire [3:0] bcd1a_out;

  wire bcd1b_clk;
  wire bcd1b_reset;
  wire bcd1b_x;
  wire [3:0] bcd1b_out;

  assign bcd1a_clk = clk;
  assign bcd1b_clk = clk;

  assign bcd1a_reset = reset;
  assign bcd1b_reset = reset;

  assign bcd1a_x = x;

  bcd1  bcd1a(bcd1a_clk, bcd1a_reset, bcd1a_x, bcd1a_out);
  bcd1  bcd1b(bcd1b_clk, bcd1b_reset, bcd1b_x, bcd1b_out);

  assign bcd1b_x = x & bcd1a_out[0] & ~bcd1a_out[1] & ~bcd1a_out[2] & bcd1a_out[3];

  assign bcd2_out = {bcd1b_out*10 + bcd1a_out};

endmodule // bcd2
