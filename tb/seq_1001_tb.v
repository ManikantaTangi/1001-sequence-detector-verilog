`timescale 1ns / 1ps
module seq_1101_tb;                                                                                                                                                        reg clk; 
reg rst; 
reg in; 
wire out; 
seq_1001 dut ( 
   .clk(clk), 
   .rst(rst), 
   .in(in), 
   .out(out) 
); 
always #5 clk = ~clk; 
initial begin 
   $display("Starting test..."); 
   $monitor("Time=%0t | in=%b | out=%b", $time, in, out); 
   clk = 0; 
   rst = 1; 
   in = 0; 
 
   #10 rst = 0; 
 
   #10 in = 1;  
   #10 in = 0; 
   #10 in = 0; 
   #10 in = 1;  
   #10 in = 0;  
   #10 in = 0;  
   #10 in = 1;   
   #10 in = 1;   
   #10 in = 0;  
   #20 $finish; 
end 
endmodule 

