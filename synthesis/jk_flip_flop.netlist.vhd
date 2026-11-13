library ieee;
use ieee.std_logic_1164.all;
entity jk_flip_flop is
  port (
    j, k, clk: in std_logic;
    q: out std_logic
  );
end entity;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

architecture rtl of jk_flip_flop is
  signal wrap_j: std_logic;
  signal wrap_k: std_logic;
  signal wrap_clk: std_logic;
  signal wrap_q: std_logic;
  signal q_internal : std_logic;
  signal n4 : std_logic;
  signal n5 : std_logic;
  signal n6 : std_logic;
  signal n7 : std_logic;
  signal n8 : std_logic;
  signal n9 : std_logic;
  signal n10 : std_logic;
  signal n12 : std_logic;
  signal n14 : std_logic;
  signal n17 : std_logic;
begin
  wrap_j <= j;
  wrap_k <= k;
  wrap_clk <= clk;
  q <= wrap_q;
  wrap_q <= q_internal;
  -- assignment3/vhdl/jk_flip_flop.vhd:12:12
  q_internal <= n17; -- (signal)
  -- assignment3/vhdl/jk_flip_flop.vhd:17:18
  n4 <= not wrap_j;
  -- assignment3/vhdl/jk_flip_flop.vhd:17:24
  n5 <= wrap_k and n4;
  -- assignment3/vhdl/jk_flip_flop.vhd:19:33
  n6 <= not wrap_k;
  -- assignment3/vhdl/jk_flip_flop.vhd:19:27
  n7 <= n6 and wrap_j;
  -- assignment3/vhdl/jk_flip_flop.vhd:21:27
  n8 <= wrap_k and wrap_j;
  -- assignment3/vhdl/jk_flip_flop.vhd:22:31
  n9 <= not q_internal;
  -- assignment3/vhdl/jk_flip_flop.vhd:21:13
  n10 <= q_internal when n8 = '0' else n9;
  -- assignment3/vhdl/jk_flip_flop.vhd:19:13
  n12 <= n10 when n7 = '0' else '1';
  -- assignment3/vhdl/jk_flip_flop.vhd:17:13
  n14 <= n12 when n5 = '0' else '0';
  -- assignment3/vhdl/jk_flip_flop.vhd:16:9
  process (wrap_clk)
  begin
    if rising_edge (wrap_clk) then
      n17 <= n14;
    end if;
  end process;
end rtl;
