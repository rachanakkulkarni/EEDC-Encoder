module EEDC_encoder(
 input clk,
 input [6:0] data_input,
 output reg [10:0] encoded_output
);
wire r3, r2, r1, r0;
assign r3 = data_input[6] ^ data_input[4] ^ data_input[2] ^ data_input[0];
assign r2 = data_input[5] ^ data_input[4] ^ data_input[1] ^ data_input[0];
assign r1 = data_input[3] ^ data_input[2] ^ data_input[1] ^ data_input[0];
assign r0 = r3 ^ r2 ^ r1;
always @(posedge clk)
begin
 encoded_output[10]= data_input[6];
 encoded_output[9] = data_input[5];
 encoded_output[8] = data_input[4];
 encoded_output[7] = data_input[3];
 encoded_output[6] = data_input[2];
 encoded_output[5] = data_input[1];
 encoded_output[4] = data_input[0];
 encoded_output[3:0] = {r3, r2, r1, r0};
end
  endmodule
