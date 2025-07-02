----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 09:41:07 PM
-- Design Name: 
-- Module Name: Bai_4 - Behavioral
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

entity Bai_9 is
    Port ( CLK : in STD_LOGIC;
           y: out STD_LOGIC_VECTOR (2 downto 0));
end Bai_9;

architecture Behavioral of Bai_9 is
component D_FF is
    Port ( D : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : buffer STD_LOGIC;
           Q_inv : buffer STD_LOGIC);
end component;
signal D1, D2, D3: std_logic;
signal Q1: std_logic:= '1';
signal Q2: std_logic:= '0';
signal Q3: std_logic:= '0';
signal Q1_inv, Q2_inv, Q3_inv: std_logic;

begin
    D3 <= (Q2 and Q1) or (Q3 and Q1);
    D2 <= (Q3_inv and Q1_inv) or Q2_inv;
    D1 <= Q2;
    
    D1_FF: D_FF port map(D => D1, CLK => CLK, Q => Q1, Q_inv => Q1_inv);
    D2_FF: D_FF port map(D => D2, CLK => CLK, Q => Q2, Q_inv => Q2_inv);
    D3_FF: D_FF port map(D => D3, CLK => CLK, Q => Q3, Q_inv => Q3_inv);
    
    y(0) <= Q1;
    y(1) <= Q2;
    y(2) <= Q3;


end Behavioral;