// Code your testbench here
// or browse Examples

`include "prg_tb.sv"
module test;
  wire top_inp0,top_inp1, top_sel;
  wire top_outp;

  
  mux_2x1  DUT(.outp(top_outp), .sel(top_sel), .inp0(top_inp0), .inp1(top_inp1));
  
  prg_tb  PRG(.tb_outp(top_outp), .tb_sel(top_sel), .tb_inp0(top_inp0), .tb_inp1(top_inp1));
 
endmodule
  
    