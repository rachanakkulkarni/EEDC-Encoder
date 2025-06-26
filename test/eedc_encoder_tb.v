module EEDC_encoder_tb;
 reg clk;
 reg [6:0] data_input;
 wire [10:0] encoded_output;
 EEDC_encoder dut (
 .clk(clk),
 .data_input(data_input),
 .encoded_output(encoded_output)
 );
 always #50 clk <= ~clk;
 initial
 begin
 clk = 0;
 data_input = 7'b0000000;
 #100 data_input = 7'b0000001;
 #100 data_input = 7'b0000010;
 #100 data_input = 7'b0000011;
 #100 data_input = 7'b0000100;
 #100 data_input = 7'b0000101;
 #100 data_input = 7'b0000110;
 #500 $finish;
 end

 always @(posedge clk) begin
 $display("Time=%0t, Input=%b, Encoded Output=%b", $time, data_input,
encoded_output);
 end
endmodule
