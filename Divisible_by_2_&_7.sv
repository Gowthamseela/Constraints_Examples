class divisible_2_and_7;
  randc int a;

  constraint c1 { a inside {[1:100]};
      a % 14 == 0;}
   function void post_randomize;
    $display("number divisible by 2 and 7 is = %0d", a);
   endfunction
endclass
    

module tb;
  divisible_2_and_7 ev;
  initial begin
    ev = new();
    repeat(10)begin
    ev.randomize();
  end
  end
endmodule
