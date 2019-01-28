module T_FF
(
input c, r,
output q  
);
wire dt;

//Instantiate D_FF
D_FF dff0
(
  .c(c),
  .r(r),
  .q(q),
  .d(dt)
);

not n1(dt,q);

endmodule