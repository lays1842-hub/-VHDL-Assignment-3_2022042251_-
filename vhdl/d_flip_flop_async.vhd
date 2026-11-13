library ieee;
use ieee.std_logic_1164.all;
entity d_flip_flop_async is
    port (d, clk, set, clr : in std_logic; q : out std_logic);
end entity;
architecture structural of d_flip_flop_async is
    signal nclk, nclr, seteff, nseteff, normal, men, sen : std_logic;
    signal mnd, mx, my, ma, mb, m, mbar, snd, sx, sy, sa, sb, iq, iqbar : std_logic;
begin
    nclk <= not clk;
    nclr <= not clr;
    seteff <= set and nclr;
    nseteff <= not seteff;
    normal <= not (set or clr);
    men <= nclk and normal;
    sen <= clk and normal;
    mnd <= not d;
    mx <= not (d and men);
    my <= not (mnd and men);
    ma <= mx and nseteff;
    mb <= my and nclr;
    m <= not (ma and mbar);
    mbar <= not (mb and m);
    snd <= not m;
    sx <= not (m and sen);
    sy <= not (snd and sen);
    sa <= sx and nseteff;
    sb <= sy and nclr;
    iq <= not (sa and iqbar);
    iqbar <= not (sb and iq);
    q <= iq;
end architecture;
