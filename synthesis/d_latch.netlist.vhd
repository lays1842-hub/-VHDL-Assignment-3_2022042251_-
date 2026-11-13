library ieee;
use ieee.std_logic_1164.all;
entity d_latch is
  port (
    d, en: in std_logic;
    q: out std_logic
  );
end entity;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

architecture rtl of d_latch is
  signal wrap_d: std_logic;
  signal wrap_en: std_logic;
  signal wrap_q: std_logic;
  signal set_n : std_logic;
  signal reset_n : std_logic;
  signal q_internal : std_logic;
  signal q_bar : std_logic;
  signal n1 : std_logic;
  signal n2 : std_logic;
  signal n3 : std_logic;
  signal n4 : std_logic;
  signal n5 : std_logic;
  signal n6 : std_logic;
  signal n7 : std_logic;
  signal n8 : std_logic;
  signal n9 : std_logic;
begin
  wrap_d <= d;
  wrap_en <= en;
  q <= wrap_q;
  wrap_q <= q_internal;
  -- assignment3/vhdl/d_latch.vhd:12:12
  set_n <= n2; -- (signal)
  -- assignment3/vhdl/d_latch.vhd:12:19
  reset_n <= n5; -- (signal)
  -- assignment3/vhdl/d_latch.vhd:12:28
  q_internal <= n7; -- (signal)
  -- assignment3/vhdl/d_latch.vhd:12:40
  q_bar <= n9; -- (signal)
  -- assignment3/vhdl/d_latch.vhd:14:21
  n1 <= wrap_d and wrap_en;
  -- assignment3/vhdl/d_latch.vhd:14:14
  n2 <= not n1;
  -- assignment3/vhdl/d_latch.vhd:15:22
  n3 <= not wrap_d;
  -- assignment3/vhdl/d_latch.vhd:15:29
  n4 <= n3 and wrap_en;
  -- assignment3/vhdl/d_latch.vhd:15:16
  n5 <= not n4;
  -- assignment3/vhdl/d_latch.vhd:16:30
  n6 <= set_n and q_bar;
  -- assignment3/vhdl/d_latch.vhd:16:19
  n7 <= not n6;
  -- assignment3/vhdl/d_latch.vhd:17:27
  n8 <= reset_n and q_internal;
  -- assignment3/vhdl/d_latch.vhd:17:14
  n9 <= not n8;
end rtl;
