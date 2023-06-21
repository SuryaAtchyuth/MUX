// Code your design here

module mux_2x1(outp,sel,inp0,inp1);
  input inp0,inp1,sel;
  output reg outp;
  
  always@(sel or inp0 or inp1 ) begin
    if(sel)
      outp=inp1;
    else
      outp=inp0;
  end
endmodule
