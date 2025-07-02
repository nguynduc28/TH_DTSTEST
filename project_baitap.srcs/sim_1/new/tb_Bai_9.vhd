----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 09:48:34 PM
-- Design Name: 
-- Module Name: tb_Bai_4 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_Bai_9 is
--  Port ( );
end tb_Bai_9;

architecture Behavioral of tb_Bai_9 is
component Bai_9 is
    Port ( CLK : in STD_LOGIC;
           y: out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal clk: std_logic:= '0';
signal y : std_logic_vector(2 downto 0);

constant CLK_PERIOD : time := 10 ns;

begin
tb_Bai_9: Bai_9 port map(CLK => clk, y => y);

clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
end process;


end Behavioral;