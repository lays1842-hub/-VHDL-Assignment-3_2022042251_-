library ieee;
use ieee.std_logic_1164.all;

entity d_latch is
    port (
        d, en : in std_logic;
        q : out std_logic
    );
end entity;

architecture structural of d_latch is
    signal set_n, reset_n, q_internal, q_bar : std_logic;
begin
    set_n <= not (d and en);
    reset_n <= not ((not d) and en);
    q_internal <= not (set_n and q_bar);
    q_bar <= not (reset_n and q_internal);
    q <= q_internal;
end architecture;
