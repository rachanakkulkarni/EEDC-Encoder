module Hamming_encoder_tb;
 reg clk;
 reg [7:1] data;
 wire [11:1] encoded;
 Hamming_encoder dut (
 .clk(clk),
 .data(data),
 .encoded(encoded)
 );
 always #50 clk <= ~clk;
 initial
 begin
 clk = 0;
 data = 7'b0000000;
 #100 data = 7'b0000001;
 #100 data = 7'b0000010;
 #100 data = 7'b0000011;
 #100 data = 7'b0000100;
 #100 data = 7'b0000101;
 #100 data= 7'b0000110;
 #500 $finish;
 end
   always @(posedge clk) begin
 $display("Time=%0t, Input=%b, Encoded Output=%b", $time, data, encoded);
 end
endmodule
