module tb
(

);

reg [63:0] a;
reg [63:0] b;
reg sel;
wire [63:0] data_output;

Mux m1
(
  .a(a),
  .b(b),
  .sel(sel),
  .data_out(data_output)
);

initial 
begin
  sel = 1'b0;
  a = 64'b0;
  b = 64'b101;
end

initial
#15 b = 64'b111;

always
#10 sel = ~sel;

initial 
$monitor("Selector: ",sel," a: ",a," b: ",b);

endmodule
