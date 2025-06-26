module crc_encoder_tb;
 reg clk;
 reg [6:0] data_input;
 wire [6:0] crc_output;
 // Instantiate CRC module
 crc dut (
 .msg(data_input),
 .gp(3'b111),
 .crcf(crc_output)
 );
 // Clock generation
 always #5 clk = ~clk;
 // Test stimulus
 initial begin
 // Initialize inputs
 data_input = 7'b0000000;
 #100 data_input = 7'b0000001;
 #100 data_input = 7'b0000010; 
 #100 data_input = 7'b0000011;
 #100 data_input = 7'b0000100;
 #100 data_input = 7'b0000101;
 #100 data_input = 7'b0000110;
 #500 $finish;
 end
 // Display input and output
 always @(posedge clk) begin
 $display("Time=%0t, Input=%b, CRC Output=%b", $time, data_input,
crc_output);
 end
 // Debugging statements
 initial begin
 $monitor("Time=%0t, clk=%b", $time, clk);
 $monitor("Time=%0t, data_input=%b", $time, data_input);
 $monitor("Time=%0t, crc_output=%b", $time, crc_output);
 end
endmodule
