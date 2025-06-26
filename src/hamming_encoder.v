module hamming_encoder(
input clk,
input [7:1] data,
output reg [11:1] encoded
);
always @ (posedge clk)
begin
encoded[11]=data[7];
encoded[10]=data[6];
encoded[9]=data[5];
encoded[8]=data[5]^data[6]^data[7];
encoded[7]=data[4];
encoded[6]=data[3];
encoded[5]=data[2];
encoded[4]=data[2]^data[3]^data[4];
encoded[3]=data[1];
encoded[2]=data[1]^data[3]^data[4]^data[6]^data[7];
encoded[1]=data[1]^data[2]^data[4]^data[5]^data[7];
end
endmodule
