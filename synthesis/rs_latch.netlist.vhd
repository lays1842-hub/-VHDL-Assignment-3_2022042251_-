library ieee;
use ieee.std_logic_1164.all;
entity rs_latch is
  port (
    s, r: in std_logic;
    q, q_bar: out std_logic
  );
end entity;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

architecture rtl of rs_latch is
  signal wrap_s: std_logic;
  signal wrap_r: std_logic;
  signal wrap_q: std_logic;
  signal wrap_q_bar: std_logic;
  signal q_internal : std_logic;
  signal q_bar_internal : std_logic;
  signal n2 : std_logic;
  signal n3 : std_logic;
  signal n4 : std_logic;
  signal n5 : std_logic;
begin
  wrap_s <= s;
  wrap_r <= r;
  q <= wrap_q;
  q_bar <= wrap_q_bar;
  wrap_q <= q_internal;
  wrap_q_bar <= q_bar_internal;
  -- assignment3/vhdl/rs_latch.vhd:12:12
  q_internal <= n3; -- (signal)
  -- assignment3/vhdl/rs_latch.vhd:12:24
  q_bar_internal <= n5; -- (signal)
  -- assignment3/vhdl/rs_latch.vhd:14:26
  n2 <= wrap_r or q_bar_internal;
  -- assignment3/vhdl/rs_latch.vhd:14:19
  n3 <= not n2;
  -- assignment3/vhdl/rs_latch.vhd:15:30
  n4 <= wrap_s or q_internal;
  -- assignment3/vhdl/rs_latch.vhd:15:23
  n5 <= not n4;
end rtl;
