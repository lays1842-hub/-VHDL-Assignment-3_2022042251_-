module rs_latch
  (input  s,
   input  r,
   output q,
   output q_bar);
  wire q_internal;
  wire q_bar_internal;
  wire n2;
  wire n3;
  wire n4;
  wire n5;
  assign q = q_internal; //(module output)
  assign q_bar = q_bar_internal; //(module output)
  /*# assignment3/vhdl/rs_latch.vhd:12:12 */
  assign q_internal = n3; // (signal)
  /*# assignment3/vhdl/rs_latch.vhd:12:24 */
  assign q_bar_internal = n5; // (signal)
  /*# assignment3/vhdl/rs_latch.vhd:14:26 */
  assign n2 = r | q_bar_internal;
  /*# assignment3/vhdl/rs_latch.vhd:14:19 */
  assign n3 = ~n2;
  /*# assignment3/vhdl/rs_latch.vhd:15:30 */
  assign n4 = s | q_internal;
  /*# assignment3/vhdl/rs_latch.vhd:15:23 */
  assign n5 = ~n4;
endmodule

