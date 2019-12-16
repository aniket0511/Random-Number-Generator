`timescale 1ns / 1ps



module test();
    reg clk;
    wire [4:0] out;
    
    random r0(out,clk);
    
   
     always
     begin
        clk=1;
        forever #10 clk=~clk;
     end      
      
     
      
endmodule
