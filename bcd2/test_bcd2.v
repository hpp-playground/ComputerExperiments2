`timescale 1ns / 1ns   
`include "bcd2.v"  

module test ;

  reg reset, clk, x;

  wire [7:0] bcd2_out;

  bcd2 bcd2a(clk, reset, x, bcd2_out)
 
  always begin
    #5      clk = ~clk;
  end
 
  always begin
    #15     x = ~x;
  end
 
  initial begin
    reset = 1; clk = 0; x = 0;

    // 20 ñ�̻���(20 ns)��
    #20 reset = 0;

    // ���� 20 ñ�̻���(20 ns)��
    #20 reset = 1;

    // ���� 2000 ñ�̻���(2000 ns)��, ��λ
    #2000 $finish;
  end
 
endmodule // test
