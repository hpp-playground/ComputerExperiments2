module bcd1 (clk, reset, x, bcd1_out);
  input clk, reset, x;
  output [3:0] bcd1_out;

  reg [3:0] count_reg; 

  assign bcd1_out = count_reg;

  always @(posedge clk or negedge reset) begin
    if (reset == 1'b0) begin
      count_reg <= 0;

    end else begin
      if ( x == 1'1 ) begin  
        if ( x < 9 ) begin  
          
          x = x + 1;
        end else begin

          x = 0;
        end  // END: if ( ) begin  // ????????????????? 0 ?????? or ?????????????
      end  // END: if ( ) begin  // x ?? 1'b1 ?¦³???????????
    end  // END: if (reset == 1'b0) begin
  end  // END: always @(posedge clk or negedge reset) begin
endmodule // bcd1
