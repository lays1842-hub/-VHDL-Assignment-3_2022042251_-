`timescale 1ns/1ps
module tb_netlists;
  reg s=0, r=0, d_l=0, en=0, d=0, clk=0, j=0, k=0, ad=0, aset=0, clr=0;
  wire rq, rqb, lq, dq, jq, aq;
  rs_latch rs(s, r, rq, rqb);
  d_latch dl(d_l, en, lq);
  d_flip_flop df(d, clk, dq);
  jk_flip_flop jk(j, k, clk, jq);
  d_flip_flop_async af(ad, clk, aset, clr, aq);
  initial begin
    s=1; #10; if ({rq,rqb} !== 2'b10) $fatal(1,"RS set");
    s=0; #10; if ({rq,rqb} !== 2'b10) $fatal(1,"RS hold");
    r=1; #10; if ({rq,rqb} !== 2'b01) $fatal(1,"RS reset");
    s=1; #10; if ({rq,rqb} !== 2'b00) $fatal(1,"RS forbidden");
    s=0; #10; r=0; #10;
    en=1; d_l=1; #10; if (lq !== 1) $fatal(1,"D latch transparent");
    d_l=0; #10; if (lq !== 0) $fatal(1,"D latch transparent 0");
    en=0; d_l=1; #10; if (lq !== 0) $fatal(1,"D latch hold");
    d=1; j=1; k=0; ad=1; #10; clk=1; #10;
    if ({dq,jq,aq} !== 3'b111) $fatal(1,"FF rising edge");
    d=0; j=0; k=0; ad=0; #10;
    if ({dq,jq,aq} !== 3'b111) $fatal(1,"FF hold high");
    clk=0; #10; clk=1; #10;
    if ({dq,jq,aq} !== 3'b010) $fatal(1,"D update and JK hold");
    clk=0; j=0; k=1; #10; clk=1; #10; if (jq !== 0) $fatal(1,"JK reset");
    clk=0; j=1; k=1; #10; clk=1; #10; if (jq !== 1) $fatal(1,"JK toggle 1");
    clk=0; #10; clk=1; #10; if (jq !== 0) $fatal(1,"JK toggle 0");
    clk=0; aset=1; #10; if (aq !== 1) $fatal(1,"async set");
    clr=1; #10; if (aq !== 0) $fatal(1,"async priority");
    clr=0; #10; if (aq !== 1) $fatal(1,"async clear release");
    clk=1; #10; clr=1; #10; if (aq !== 0) $fatal(1,"priority clk high");
    clr=0; #10; if (aq !== 1) $fatal(1,"release clk high");
    clk=0; clr=1; #10; aset=0; #10; if (aq !== 0) $fatal(1,"clear");
    clr=0; ad=1; #10; if (aq !== 0) $fatal(1,"async normal hold");
    clk=1; #10; if (aq !== 1) $fatal(1,"async normal rising");
    $display("ALL POST-SYNTHESIS VERILOG TESTS PASSED");
    $finish;
  end
endmodule
