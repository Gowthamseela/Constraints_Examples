class trans;
  rand int a[];
  constraint c1 {a.size == 10;}
  constraint c2 {foreach (a[i])
    if(i == 0)
      a[i] == 0;
                 else if(i==1) 
        a[i] == 1;
                 else 
                   a[i] == a[i-1] + i;} 
  function void post_randomize();
    for(int i = 0 ; i< a.size ; i++)
      $write("%0d ",a[i]);
  endfunction
endclass

module tb;
  trans tr;
  initial begin
    tr = new();
      tr.randomize();
    end
endmodule
