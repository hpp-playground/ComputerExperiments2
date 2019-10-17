`timescale 1ns / 1ns
`include "m.v"   
 
module test ;
  reg reset, clk, x;

  wire y;

  m ma(clk, reset, x, y);
 
  always begin
    #5      clk = ~clk;
  end
 
  initial begin
    reset = 1; clk = 0; x = 0;

    #20 reset = 0;

    #20 reset = 1;

    #1  x = 1;
    #10 x = 0;
    #10 x = 0;
    #10 x = 1;
    #10 x = 1;
    #10 x = 1;
    #10 x = 0;

    #1000 $finish;
  end
 
endmodule // test
