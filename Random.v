`timescale 1ns / 1ps

module tff(q,t,c);
    output q;
    input t,c;
    reg q;
    initial 
     begin 
      q=1'b1;
     end
    always @ (posedge c)
    begin
        if (t==1'b0) begin q=q; end
        else begin q=~q;  end
    end
endmodule
 
module tff1(q,t,c);
    output q;
    input t,c;
    reg q;
    initial 
     begin 
      q=1'b0;
     end
    always @ (posedge c)
    begin
        if (t==1'b0) begin q=q; end
        else begin q=~q;  end
    end
endmodule
 
module random(o,clk);
    output [4:0]o;      input clk;
    xor (t0,o[0],o[1]);
    assign t1=o[0];
    assign t2=o[1];
    assign t3=o[2];
    assign t4=o[3];
    tff u1(o[0],t0,clk);
    tff1 u2(o[1],t1,clk);
    tff1 u3(o[2],t2,clk);
    tff1 u4(o[3],t3,clk);
    tff1 u5(o[4],t4,clk);

endmodule
