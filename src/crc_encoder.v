module crc (
 input [6:0] msg,
 input [2:0] gp,
 output reg [6:0] crcf
);
reg [6:0] rem;
integer i;
// CRC calculation process
always @* begin
 // Initialize remainder with message
 rem = {msg, 3'b0};
 // Perform CRC calculation
 for (i = 6; i >= 0; i = i - 1) begin
 if (rem[6] == 1'b1) begin
 rem = rem ^ gp;
 end
 rem = {rem[5:0], 1'b0};
 end
// Output CRC result
  crcf = rem[6:0];
end
endmodule
