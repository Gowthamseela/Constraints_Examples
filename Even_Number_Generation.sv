class even;
  rand int a[];
   constraint c1 {a.size == 10;}
  constraint c2 {foreach(a[i])
    if((a[i] & 1) == 0)
      a[i] == (i+2)*2;
                 else
                   a[i] == 0;}
  function void post_randomize();
    for(int i = 0; i < a.size; i++)
      $write("%0d ",a[i]);
  endfunction
endclass

module tb;
  even ev;
  initial begin
    ev = new();
    ev.randomize;
  end
endmodule
