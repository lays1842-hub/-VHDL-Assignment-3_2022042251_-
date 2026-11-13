library ieee;
use ieee.std_logic_1164.all;

entity rs_latch is
    port (
        s, r : in std_logic;
        q, q_bar : out std_logic
    );
end entity;

architecture rtl of rs_latch is
    signal q_internal, q_bar_internal : std_logic;
begin
    q_internal <= not (r or q_bar_internal);
    q_bar_internal <= not (s or q_internal);
    q <= q_internal;
    q_bar <= q_bar_internal;
end architecture;
