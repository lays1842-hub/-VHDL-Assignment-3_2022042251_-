library ieee;
use ieee.std_logic_1164.all;
entity async_extended_tb is end entity;
architecture test of async_extended_tb is
    signal d, clk, s, clr, q, expected : std_logic := '0';
begin
    dut: entity work.d_flip_flop_async port map(d, clk, s, clr, q);
    process(clk,s,clr) begin
        if clr = '1' then expected <= '0';
        elsif s = '1' then expected <= '1';
        elsif rising_edge(clk) then expected <= d;
        end if;
    end process;
    process
        procedure check is
        begin
            wait for 10 ns;
            assert q = expected report "output mismatch" severity failure;
        end procedure;
    begin
        clr <= '1'; check; clr <= '0'; check;
        for clk_level in 0 to 1 loop
            if clk_level = 0 then clk <= '0'; else clk <= '1'; end if; check;
            for initial in 0 to 3 loop
                if initial mod 2 = 0 then s <= '0'; else s <= '1'; end if; check;
                if initial < 2 then clr <= '0'; else clr <= '1'; end if; check;
                for final in 0 to 3 loop
                    if final mod 2 = 0 then s <= '0'; else s <= '1'; end if; check;
                    if final < 2 then clr <= '0'; else clr <= '1'; end if; check;
                end loop;
            end loop;
        end loop;
        report "Extended async transitions passed";
        wait;
    end process;
end architecture;
