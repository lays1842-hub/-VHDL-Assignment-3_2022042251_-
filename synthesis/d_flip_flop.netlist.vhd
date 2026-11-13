library ieee;
use ieee.std_logic_1164.all;
entity d_flip_flop is
  port (
    d, clk: in std_logic;
    q: out std_logic
  );
end entity;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

architecture rtl of d_flip_flop is
  signal wrap_d: std_logic;
  signal wrap_clk: std_logic;
  signal wrap_q: std_logic;
  signal n6 : std_logic;
begin
  wrap_d <= d;
  wrap_clk <= clk;
  q <= wrap_q;
  wrap_q <= n6;
  -- assignment3/vhdl/d_flip_flop.vhd:15:9
  process (wrap_clk)
  begin
    if rising_edge (wrap_clk) then
      n6 <= wrap_d;
    end if;
  end process;
end rtl;
