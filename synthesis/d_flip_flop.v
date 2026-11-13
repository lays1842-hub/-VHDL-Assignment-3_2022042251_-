module d_flip_flop
  (input  d,
   input  clk,
   output q);
  reg n6;
  assign q = n6; //(module output)
  /*# assignment3/vhdl/d_flip_flop.vhd:15:9 */
  always @(posedge clk)
    n6 <= d;
endmodule

