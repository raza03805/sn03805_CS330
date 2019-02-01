module Mux
(
input [63:0] a, [63:0] b, sel,
output reg [63:0] data_out
);

always @ (sel or a or b)
  begin
    if (sel)
        data_out <= b;
    else
        data_out <= a;
  end
  
        
endmodule