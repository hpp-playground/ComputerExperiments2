`define st0 2'b00
`define st1 2'b01
`define st2 2'b10
`define st3 2'b11

module m (clk, reset, x, y);
  input clk, reset, x;
  output y;

  reg y_reg;
  reg [1:0] st_reg;

  assign y = y_reg;

  always @(posedge clk or negedge reset) begin
    if (reset == 1'b0) begin
      y_reg <= 0;
      st_reg <= `st0;
    end else begin
      case (st_reg)
        `st0: begin 
          if (x == 1'b0) begin
            st_reg <= `st1;
          end else begin
            st_reg <= `st0;
          end

          y_reg <= 0;
        end
        `st1: begin  
          if (x == 1'b0) begin
            st_reg <= `st2;
          end else begin
            st_reg <= `st0;
          end
          y_reg <= 0;
        end
        `st2: begin 
          if (x == 1'b0) begin
            st_reg <= `st2;
          end else begin
            st_reg <= `st3;
          end
          y_reg <= 0;
        end
        `st3: begin 
          if (x == 1'b0) begin
            st_reg <= `st0;
          end else begin
            st_reg <= `st0;
          end
          y_reg <= 1;
        end
      endcase
    end
  end
endmodule // m
