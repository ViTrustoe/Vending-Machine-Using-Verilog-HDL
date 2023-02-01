module stimulus;

     reg rst;
    reg clk;
    reg[1:0] in;
     wire[1:0] c_state;
    wire[1:0] n_state;
    wire out;
    wire[1:0] change;
      vending_machine uut (
     .rst(rst),
    .clk(clk),
    .in(in),
     .c_state(c_state),
    .n_state(n_state),
    .out(out),
    .change(change)
    );
    initial
 begin
rst =1;
clk =0;
        
//a) 5-5-5

 #6 rst = 0;
 in=1;
 #11 in=1;
 #16 in=1;
 #25 $finish;
 end
always #5 clk = ~clk;
 endmodule

//b) 10-10

 #6 rst = 0;
 in=2;
 #11 in=2;
 #16 in=2;
 #25 $finish;
 end
 always #5 clk = ~clk;
 endmodule

//c) 5-0, c=5

 #6 rst = 0;
 in=1;
 #11 in=0;
 #25 $finish;
 end 
 always #5 clk = ~clk;
 endmodule

//d) 10-0

 #6 rst = 0;
 in=2;
 #11 in=0;
 #25 $finish;
 end 
 always #5 clk = ~clk;
 endmodul
