

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_bai5 is
--  Port ( );
end tb_bai5;

architecture Behavioral of tb_bai5 is
 signal clk_tb: STD_LOGIC :='0';
 signal Q_tb: STD_LOGIC_VECTOR (2 downto 0);
 signal Q_inv_tb: STD_LOGIC_VECTOR (2 downto 0);
 signal y_tb: STD_LOGIC;
 
 constant clk_period: time :=10ns;
begin
 uut:entity work.bai5
  port map(
    clk => clk_tb,
    Q   => Q_tb,
    Q_inv => Q_inv_tb,
    y   => y_tb);
 
 clk_process: process
 begin 
   while true loop 
      clk_tb <= '0';
      wait for clk_period/2;
      clk_tb <= '1';
      wait for clk_period/2;
    end loop;
   end process;
   
 stim_proc:process
 begin 
    wait for clk_period;
    for i in 0 to 9 loop
      wait for clk_period;
    end loop;
    wait;
 end process;

end Behavioral;