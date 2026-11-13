library ieee;
use ieee.std_logic_1164.all;

entity tb_assignment3 is
end entity;

architecture test of tb_assignment3 is
    signal s, r, rs_q, rs_q_bar : std_logic := '0';
    signal d_l, en, latch_q : std_logic := '0';
    signal d, clk, d_q : std_logic := '0';
    signal j, k, jk_q : std_logic := '0';
    signal async_d, async_set, async_clr, async_q : std_logic := '0';
begin
    rs: entity work.rs_latch port map (s, r, rs_q, rs_q_bar);
    dl: entity work.d_latch port map (d_l, en, latch_q);
    df: entity work.d_flip_flop port map (d, clk, d_q);
    jk: entity work.jk_flip_flop port map (j, k, clk, jk_q);
    da: entity work.d_flip_flop_async port map (async_d, clk, async_set, async_clr, async_q);

    process
    begin
        s <= '1'; r <= '0'; wait for 10 ns;
        assert rs_q = '1' and rs_q_bar = '0' report "RS set failed" severity failure;
        s <= '0'; wait for 10 ns;
        assert rs_q = '1' and rs_q_bar = '0' report "RS hold failed" severity failure;
        r <= '1'; wait for 10 ns;
        assert rs_q = '0' and rs_q_bar = '1' report "RS reset failed" severity failure;
        s <= '1'; wait for 10 ns;
        assert rs_q = '0' and rs_q_bar = '0' report "RS forbidden condition failed" severity failure;
        s <= '0'; wait for 10 ns;
        r <= '0'; wait for 10 ns;
        assert rs_q = '0' and rs_q_bar = '1' report "RS reset hold failed" severity failure;
        report "RS latch: set, reset, hold, forbidden inputs passed";

        en <= '1'; d_l <= '1'; wait for 10 ns;
        assert latch_q = '1' report "D latch transparent high failed" severity failure;
        d_l <= '0'; wait for 10 ns;
        assert latch_q = '0' report "D latch transparent low failed" severity failure;
        en <= '0'; d_l <= '1'; wait for 10 ns;
        assert latch_q = '0' report "D latch hold failed" severity failure;
        report "D latch: transparent and hold passed";

        d <= '1'; j <= '1'; k <= '0'; async_d <= '1'; wait for 10 ns;
        clk <= '1'; wait for 10 ns;
        assert d_q = '1' and jk_q = '1' and async_q = '1' report "Rising-edge set failed" severity failure;
        d <= '0'; j <= '0'; k <= '0'; async_d <= '0'; wait for 10 ns;
        assert d_q = '1' and jk_q = '1' and async_q = '1' report "High clock hold failed" severity failure;
        clk <= '0'; wait for 10 ns;
        assert d_q = '1' and jk_q = '1' and async_q = '1' report "Falling edge changed output" severity failure;
        clk <= '1'; wait for 10 ns;
        assert d_q = '0' and jk_q = '1' and async_q = '0' report "D update or JK hold failed" severity failure;
        clk <= '0'; j <= '0'; k <= '1'; wait for 10 ns;
        clk <= '1'; wait for 10 ns;
        assert jk_q = '0' report "JK reset failed" severity failure;
        clk <= '0'; j <= '1'; k <= '1'; wait for 10 ns;
        clk <= '1'; wait for 10 ns;
        assert jk_q = '1' report "JK toggle to one failed" severity failure;
        clk <= '0'; wait for 10 ns;
        clk <= '1'; wait for 10 ns;
        assert jk_q = '0' report "JK toggle to zero failed" severity failure;
        report "D and JK flip-flops: rising edge and all modes passed";

        clk <= '0'; async_set <= '1'; wait for 10 ns;
        assert async_q = '1' report "Asynchronous set failed" severity failure;
        async_clr <= '1'; wait for 10 ns;
        assert async_q = '0' report "Asynchronous clear priority failed" severity failure;
        async_clr <= '0'; wait for 10 ns;
        assert async_q = '1' report "Set was not restored after clear release" severity failure;
        clk <= '1'; wait for 10 ns;
        async_clr <= '1'; wait for 10 ns;
        assert async_q = '0' report "Clear priority with high clock failed" severity failure;
        async_clr <= '0'; wait for 10 ns;
        assert async_q = '1' report "Set restore with high clock failed" severity failure;
        clk <= '0'; wait for 10 ns;
        async_clr <= '1'; wait for 10 ns;
        async_set <= '0'; wait for 10 ns;
        assert async_q = '0' report "Asynchronous clear failed" severity failure;
        async_clr <= '0'; async_d <= '1'; wait for 10 ns;
        assert async_q = '0' report "Asynchronous flip-flop hold failed" severity failure;
        clk <= '1'; wait for 10 ns;
        assert async_q = '1' report "Asynchronous flip-flop normal operation failed" severity failure;
        report "Asynchronous D flip-flop: set, clear, priority and normal operation passed";
        report "ALL TESTS PASSED";
        wait;
    end process;
end architecture;
