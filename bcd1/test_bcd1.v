`timescale 1ns / 1ns

`include "bcd1.v" 
 
module test ;
  reg reset, clk, x;

  wire [3:0] bcd1_out;

  bcd1 bcd1a(clk, reset, x, bcd1_out);
 
  always begin
    #5      clk = ~clk;
  end
 
  always begin
    #15     x = ~x;
  end
 
  initial begin
    reset = 1; clk = 0; x = 0;
    #20 reset = 0;
    #20 reset = 1;
    #1000 $finish;
  end
 
endmodule // test
