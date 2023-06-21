program prg_tb(tb_outp, tb_sel, tb_inp0, tb_inp1);
  output reg tb_inp0,tb_inp1, tb_sel;
  input tb_outp;
  
  reg temp;
  reg exp_out[$], real_out[$]; 
  
  
  initial begin
    
    for(reg[2:0] i=0;i<4;i++) begin
      
      #5; tb_sel=i[0]; tb_inp0=i[1]; tb_inp1=i[0]; 
      
      temp = tb_sel ? tb_inp1 : tb_inp0;
      
      exp_out.push_back(temp);
      
    end
  end
  
  initial begin
    #5;
    for(int i=0;i<4;i++) begin
      #5;real_out.push_back(tb_outp);
    end
  end
  
  final begin
    if(exp_out==real_out)
      $display("\n######## TEST PASSED ############\n");
    else
      $display("\n******** TEST FAILED ************\n");
  end
  
  
endprogram