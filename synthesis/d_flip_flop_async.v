module d_flip_flop_async
  (input  d,
   input  clk,
   input  set,
   input  clr,
   output q);
  wire nclk;
  wire nclr;
  wire seteff;
  wire nseteff;
  wire normal;
  wire men;
  wire sen;
  wire mnd;
  wire mx;
  wire my;
  wire ma;
  wire mb;
  wire m;
  wire mbar;
  wire snd;
  wire sx;
  wire sy;
  wire sa;
  wire sb;
  wire iq;
  wire iqbar;
  wire n1;
  wire n2;
  wire n3;
  wire n4;
  wire n5;
  wire n6;
  wire n7;
  wire n8;
  wire n9;
  wire n10;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire n21;
  wire n22;
  wire n23;
  wire n24;
  wire n25;
  wire n26;
  wire n27;
  wire n28;
  wire n29;
  wire n30;
  assign q = iq; //(module output)
  /*# assignment3/vhdl/d_flip_flop_async.vhd:7:12 */
  assign nclk = n1; // (signal)
  /*# assignment3/vhdl/d_flip_flop_async.vhd:7:18 */
  assign nclr = n2; // (signal)
  /*# assignment3/vhdl/d_flip_flop_async.vhd:7:24 */
  assign seteff = n3; // (signal)
  /*# assignment3/vhdl/d_flip_flop_async.vhd:7:32 */
  assign nseteff = n4; // (signal)
  /*# assignment3/vhdl/d_flip_flop_async.vhd:7:41 */
  assign normal = n6; // (signal)
  /*# assignment3/vhdl/d_flip_flop_async.vhd:7:49 */
  assign men = n7; // (signal)
  /*# assignment3/vhdl/d_flip_flop_async.vhd:7:54 */
  assign sen = n8; // (signal)
  /*# assignment3/vhdl/d_flip_flop_async.vhd:8:12 */
  assign mnd = n9; // (signal)
  /*# assignment3/vhdl/d_flip_flop_async.vhd:8:17 */
  assign mx = n11; // (signal)
  /*# assignment3/vhdl/d_flip_flop_async.vhd:8:21 */
  assign my = n13; // (signal)
  /*# assignment3/vhdl/d_flip_flop_async.vhd:8:25 */
  assign ma = n14; // (signal)
  /*# assignment3/vhdl/d_flip_flop_async.vhd:8:29 */
  assign mb = n15; // (signal)
  /*# assignment3/vhdl/d_flip_flop_async.vhd:8:33 */
  assign m = n17; // (signal)
  /*# assignment3/vhdl/d_flip_flop_async.vhd:8:36 */
  assign mbar = n19; // (signal)
  /*# assignment3/vhdl/d_flip_flop_async.vhd:8:42 */
  assign snd = n20; // (signal)
  /*# assignment3/vhdl/d_flip_flop_async.vhd:8:47 */
  assign sx = n22; // (signal)
  /*# assignment3/vhdl/d_flip_flop_async.vhd:8:51 */
  assign sy = n24; // (signal)
  /*# assignment3/vhdl/d_flip_flop_async.vhd:8:55 */
  assign sa = n25; // (signal)
  /*# assignment3/vhdl/d_flip_flop_async.vhd:8:59 */
  assign sb = n26; // (signal)
  /*# assignment3/vhdl/d_flip_flop_async.vhd:8:63 */
  assign iq = n28; // (signal)
  /*# assignment3/vhdl/d_flip_flop_async.vhd:8:67 */
  assign iqbar = n30; // (signal)
  /*# assignment3/vhdl/d_flip_flop_async.vhd:10:13 */
  assign n1 = ~clk;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:11:13 */
  assign n2 = ~clr;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:12:19 */
  assign n3 = set & nclr;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:13:16 */
  assign n4 = ~seteff;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:14:24 */
  assign n5 = set | clr;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:14:15 */
  assign n6 = ~n5;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:15:17 */
  assign n7 = nclk & normal;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:16:16 */
  assign n8 = clk & normal;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:17:12 */
  assign n9 = ~d;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:18:18 */
  assign n10 = d & men;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:18:11 */
  assign n11 = ~n10;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:19:20 */
  assign n12 = mnd & men;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:19:11 */
  assign n13 = ~n12;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:20:14 */
  assign n14 = mx & nseteff;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:21:14 */
  assign n15 = my & nclr;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:22:18 */
  assign n16 = ma & mbar;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:22:10 */
  assign n17 = ~n16;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:23:21 */
  assign n18 = mb & m;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:23:13 */
  assign n19 = ~n18;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:24:12 */
  assign n20 = ~m;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:25:18 */
  assign n21 = m & sen;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:25:11 */
  assign n22 = ~n21;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:26:20 */
  assign n23 = snd & sen;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:26:11 */
  assign n24 = ~n23;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:27:14 */
  assign n25 = sx & nseteff;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:28:14 */
  assign n26 = sy & nclr;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:29:19 */
  assign n27 = sa & iqbar;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:29:11 */
  assign n28 = ~n27;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:30:22 */
  assign n29 = sb & iq;
  /*# assignment3/vhdl/d_flip_flop_async.vhd:30:14 */
  assign n30 = ~n29;
endmodule

