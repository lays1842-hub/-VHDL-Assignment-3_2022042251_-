module d_latch
  (input  d,
   input  en,
   output q);
  wire set_n;
  wire reset_n;
  wire q_internal;
  wire q_bar;
  wire n1;
  wire n2;
  wire n3;
  wire n4;
  wire n5;
  wire n6;
  wire n7;
  wire n8;
  wire n9;
  assign q = q_internal; //(module output)
  /*# assignment3/vhdl/d_latch.vhd:12:12 */
  assign set_n = n2; // (signal)
  /*# assignment3/vhdl/d_latch.vhd:12:19 */
  assign reset_n = n5; // (signal)
  /*# assignment3/vhdl/d_latch.vhd:12:28 */
  assign q_internal = n7; // (signal)
  /*# assignment3/vhdl/d_latch.vhd:12:40 */
  assign q_bar = n9; // (signal)
  /*# assignment3/vhdl/d_latch.vhd:14:21 */
  assign n1 = d & en;
  /*# assignment3/vhdl/d_latch.vhd:14:14 */
  assign n2 = ~n1;
  /*# assignment3/vhdl/d_latch.vhd:15:22 */
  assign n3 = ~d;
  /*# assignment3/vhdl/d_latch.vhd:15:29 */
  assign n4 = n3 & en;
  /*# assignment3/vhdl/d_latch.vhd:15:16 */
  assign n5 = ~n4;
  /*# assignment3/vhdl/d_latch.vhd:16:30 */
  assign n6 = set_n & q_bar;
  /*# assignment3/vhdl/d_latch.vhd:16:19 */
  assign n7 = ~n6;
  /*# assignment3/vhdl/d_latch.vhd:17:27 */
  assign n8 = reset_n & q_internal;
  /*# assignment3/vhdl/d_latch.vhd:17:14 */
  assign n9 = ~n8;
endmodule

