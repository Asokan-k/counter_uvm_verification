
module counter(clk,rst,load,data_in,data_out);

input logic clk;
input logic rst;
input logic [3:0]data_in;
input logic load;

output logic [3:0]data_out;

always_ff @(posedge clk or posedge rst) begin
if(rst)
  data_out <= 4'b0;
else if(load)
  data_out <= data_in;
else if(data_out == 4'd12) 
  data_out <= 4'b0;
else
  data_out <= data_out + 4'b1;
end
endmodule
