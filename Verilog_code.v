module vending_machine(
    input clk,
    input rst,
    input [1:0] in,//01=50rs,10=100rs
    output reg out,
    output reg[1:0] change,
     output reg[1:0] c_state,
    output reg[1:0] n_state
    );
    parameter s0 = 2'b00;
    parameter s1 = 2'b01;
    parameter s2 = 2'b10;
    
    always@ (posedge clk)
    begin
    if (rst ==1)
    begin 
    c_state =0;
    n_state =0;
    change =2'b00;
    end
    else
    c_state = n_state;
    
    case(c_state)
    s0://state 0: 0rs
    if (in==0)
    begin
    n_state = s0;
    out =0;
    change = 2'b00;
    end
    else if(in==2'b01)
    begin
    n_state = s1;
    out = 0;
    change = 2'b00;
    end
    else if(in==2'b10)
    begin
    n_state =s2;
    out=0;
    change=2'b00;
    end
    s1: //state 1 :50rs
    if(in==0)
    begin
    n_state =s0;
    out =0;
    change = 2'b01; //change returned 50rs
    end
    else if(in==2'b01)
    begin
    n_state=s2;
    out=0;
    change=2'b00;
    end
    else if(in==2'b10)
    begin
    n_state=s0;
    out =1;
    change =2'b00;
    end
    s2: //state 2 :100rs
    if(in==0)
    begin
    n_state=s0;
    out=0;
    change=2'b10;
    end
    else if(in==2'b01)
    begin
    n_state=s0;
    out=1;
    change=2'b00;
    end
    else if(in==2'b10)
    begin
    n_state=s0;
    out=1;
    change = 2'b01;//change returned 50rs and 1 bottle
    end
    endcase
    end
    endmodule
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
    
    #6 rst = 0;
       in=1;
    #11 in=1;
    #16 in=1;
    #21 in=0;
     #26 in=2;
    #31 in=2;
    #36 in=1;
    #41 in=2;
    #55 $finish;
    end  
    always #5 clk = ~clk;
    endmodule
