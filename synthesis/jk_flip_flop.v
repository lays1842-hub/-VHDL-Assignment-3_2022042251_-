module jk_flip_flop
  (input  j,
   input  k,
   input  clk,
   output q);
  wire q_internal;
  wire n4;
  wire n5;
  wire n6;
  wire n7;
  wire n8;
  wire n9;
  wire n10;
  wire n12;
  wire n14;
  reg n17;
  assign q = q_internal; //(module output)
  /*# assignment3/vhdl/jk_flip_flop.vhd:12:12 */
  assign q_internal = n17; // (signal)
  /*# assignment3/vhdl/jk_flip_flop.vhd:17:18 */
  assign n4 = ~j;
  /*# assignment3/vhdl/jk_flip_flop.vhd:17:24 */
  assign n5 = k & n4;
  /*# assignment3/vhdl/jk_flip_flop.vhd:19:33 */
  assign n6 = ~k;
  /*# assignment3/vhdl/jk_flip_flop.vhd:19:27 */
  assign n7 = n6 & j;
  /*# assignment3/vhdl/jk_flip_flop.vhd:21:27 */
  assign n8 = k & j;
  /*# assignment3/vhdl/jk_flip_flop.vhd:22:31 */
  assign n9 = ~q_internal;
  /*# assignment3/vhdl/jk_flip_flop.vhd:21:13 */
  assign n10 = n8 ? n9 : q_internal;
  /*# assignment3/vhdl/jk_flip_flop.vhd:19:13 */
  assign n12 = n7 ? 1'b1 : n10;
  /*# assignment3/vhdl/jk_flip_flop.vhd:17:13 */
  assign n14 = n5 ? 1'b0 : n12;
  /*# assignment3/vhdl/jk_flip_flop.vhd:16:9 */
  always @(posedge clk)
    n17 <= n14;
endmodule

