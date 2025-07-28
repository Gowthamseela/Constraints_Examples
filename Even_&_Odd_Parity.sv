class parity;
  rand bit [3:0] a;        
  rand bit parity_flag;    
  
  constraint c1 { 
    if (parity_flag == 0)  
      (^a == 0);           
    else                   
      (^a == 1);           
  }
  
function void post_randomize;
    if (parity_flag == 0)
      $display("%b has even parity", a);
    else
      $display("%b has odd parity", a);
  endfunction
endclass

module tb;
  parity par;
  initial begin
    par = new();
    repeat(30) begin
      par.randomize();
  end
  end
endmodule
