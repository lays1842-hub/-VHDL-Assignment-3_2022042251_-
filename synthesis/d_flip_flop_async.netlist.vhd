library ieee;
use ieee.std_logic_1164.all;
entity d_flip_flop_async is
  port (
    d, clk, set, clr: in std_logic;
    q: out std_logic
  );
end entity;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

architecture rtl of d_flip_flop_async is
  signal wrap_d: std_logic;
  signal wrap_clk: std_logic;
  signal wrap_set: std_logic;
  signal wrap_clr: std_logic;
  signal wrap_q: std_logic;
  signal nclk : std_logic;
  signal nclr : std_logic;
  signal seteff : std_logic;
  signal nseteff : std_logic;
  signal normal : std_logic;
  signal men : std_logic;
  signal sen : std_logic;
  signal mnd : std_logic;
  signal mx : std_logic;
  signal my : std_logic;
  signal ma : std_logic;
  signal mb : std_logic;
  signal m : std_logic;
  signal mbar : std_logic;
  signal snd : std_logic;
  signal sx : std_logic;
  signal sy : std_logic;
  signal sa : std_logic;
  signal sb : std_logic;
  signal iq : std_logic;
  signal iqbar : std_logic;
  signal n1 : std_logic;
  signal n2 : std_logic;
  signal n3 : std_logic;
  signal n4 : std_logic;
  signal n5 : std_logic;
  signal n6 : std_logic;
  signal n7 : std_logic;
  signal n8 : std_logic;
  signal n9 : std_logic;
  signal n10 : std_logic;
  signal n11 : std_logic;
  signal n12 : std_logic;
  signal n13 : std_logic;
  signal n14 : std_logic;
  signal n15 : std_logic;
  signal n16 : std_logic;
  signal n17 : std_logic;
  signal n18 : std_logic;
  signal n19 : std_logic;
  signal n20 : std_logic;
  signal n21 : std_logic;
  signal n22 : std_logic;
  signal n23 : std_logic;
  signal n24 : std_logic;
  signal n25 : std_logic;
  signal n26 : std_logic;
  signal n27 : std_logic;
  signal n28 : std_logic;
  signal n29 : std_logic;
  signal n30 : std_logic;
begin
  wrap_d <= d;
  wrap_clk <= clk;
  wrap_set <= set;
  wrap_clr <= clr;
  q <= wrap_q;
  wrap_q <= iq;
  -- assignment3/vhdl/d_flip_flop_async.vhd:7:12
  nclk <= n1; -- (signal)
  -- assignment3/vhdl/d_flip_flop_async.vhd:7:18
  nclr <= n2; -- (signal)
  -- assignment3/vhdl/d_flip_flop_async.vhd:7:24
  seteff <= n3; -- (signal)
  -- assignment3/vhdl/d_flip_flop_async.vhd:7:32
  nseteff <= n4; -- (signal)
  -- assignment3/vhdl/d_flip_flop_async.vhd:7:41
  normal <= n6; -- (signal)
  -- assignment3/vhdl/d_flip_flop_async.vhd:7:49
  men <= n7; -- (signal)
  -- assignment3/vhdl/d_flip_flop_async.vhd:7:54
  sen <= n8; -- (signal)
  -- assignment3/vhdl/d_flip_flop_async.vhd:8:12
  mnd <= n9; -- (signal)
  -- assignment3/vhdl/d_flip_flop_async.vhd:8:17
  mx <= n11; -- (signal)
  -- assignment3/vhdl/d_flip_flop_async.vhd:8:21
  my <= n13; -- (signal)
  -- assignment3/vhdl/d_flip_flop_async.vhd:8:25
  ma <= n14; -- (signal)
  -- assignment3/vhdl/d_flip_flop_async.vhd:8:29
  mb <= n15; -- (signal)
  -- assignment3/vhdl/d_flip_flop_async.vhd:8:33
  m <= n17; -- (signal)
  -- assignment3/vhdl/d_flip_flop_async.vhd:8:36
  mbar <= n19; -- (signal)
  -- assignment3/vhdl/d_flip_flop_async.vhd:8:42
  snd <= n20; -- (signal)
  -- assignment3/vhdl/d_flip_flop_async.vhd:8:47
  sx <= n22; -- (signal)
  -- assignment3/vhdl/d_flip_flop_async.vhd:8:51
  sy <= n24; -- (signal)
  -- assignment3/vhdl/d_flip_flop_async.vhd:8:55
  sa <= n25; -- (signal)
  -- assignment3/vhdl/d_flip_flop_async.vhd:8:59
  sb <= n26; -- (signal)
  -- assignment3/vhdl/d_flip_flop_async.vhd:8:63
  iq <= n28; -- (signal)
  -- assignment3/vhdl/d_flip_flop_async.vhd:8:67
  iqbar <= n30; -- (signal)
  -- assignment3/vhdl/d_flip_flop_async.vhd:10:13
  n1 <= not wrap_clk;
  -- assignment3/vhdl/d_flip_flop_async.vhd:11:13
  n2 <= not wrap_clr;
  -- assignment3/vhdl/d_flip_flop_async.vhd:12:19
  n3 <= wrap_set and nclr;
  -- assignment3/vhdl/d_flip_flop_async.vhd:13:16
  n4 <= not seteff;
  -- assignment3/vhdl/d_flip_flop_async.vhd:14:24
  n5 <= wrap_set or wrap_clr;
  -- assignment3/vhdl/d_flip_flop_async.vhd:14:15
  n6 <= not n5;
  -- assignment3/vhdl/d_flip_flop_async.vhd:15:17
  n7 <= nclk and normal;
  -- assignment3/vhdl/d_flip_flop_async.vhd:16:16
  n8 <= wrap_clk and normal;
  -- assignment3/vhdl/d_flip_flop_async.vhd:17:12
  n9 <= not wrap_d;
  -- assignment3/vhdl/d_flip_flop_async.vhd:18:18
  n10 <= wrap_d and men;
  -- assignment3/vhdl/d_flip_flop_async.vhd:18:11
  n11 <= not n10;
  -- assignment3/vhdl/d_flip_flop_async.vhd:19:20
  n12 <= mnd and men;
  -- assignment3/vhdl/d_flip_flop_async.vhd:19:11
  n13 <= not n12;
  -- assignment3/vhdl/d_flip_flop_async.vhd:20:14
  n14 <= mx and nseteff;
  -- assignment3/vhdl/d_flip_flop_async.vhd:21:14
  n15 <= my and nclr;
  -- assignment3/vhdl/d_flip_flop_async.vhd:22:18
  n16 <= ma and mbar;
  -- assignment3/vhdl/d_flip_flop_async.vhd:22:10
  n17 <= not n16;
  -- assignment3/vhdl/d_flip_flop_async.vhd:23:21
  n18 <= mb and m;
  -- assignment3/vhdl/d_flip_flop_async.vhd:23:13
  n19 <= not n18;
  -- assignment3/vhdl/d_flip_flop_async.vhd:24:12
  n20 <= not m;
  -- assignment3/vhdl/d_flip_flop_async.vhd:25:18
  n21 <= m and sen;
  -- assignment3/vhdl/d_flip_flop_async.vhd:25:11
  n22 <= not n21;
  -- assignment3/vhdl/d_flip_flop_async.vhd:26:20
  n23 <= snd and sen;
  -- assignment3/vhdl/d_flip_flop_async.vhd:26:11
  n24 <= not n23;
  -- assignment3/vhdl/d_flip_flop_async.vhd:27:14
  n25 <= sx and nseteff;
  -- assignment3/vhdl/d_flip_flop_async.vhd:28:14
  n26 <= sy and nclr;
  -- assignment3/vhdl/d_flip_flop_async.vhd:29:19
  n27 <= sa and iqbar;
  -- assignment3/vhdl/d_flip_flop_async.vhd:29:11
  n28 <= not n27;
  -- assignment3/vhdl/d_flip_flop_async.vhd:30:22
  n29 <= sb and iq;
  -- assignment3/vhdl/d_flip_flop_async.vhd:30:14
  n30 <= not n29;
end rtl;
