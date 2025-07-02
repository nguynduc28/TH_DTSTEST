
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity D_FF is
    Port ( D : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : buffer STD_LOGIC;
           Q_inv : buffer STD_LOGIC);
end D_FF;

architecture Behavioral of D_FF is
signal Q_tap : STD_LOGIC :='0';
begin
process(CLK)
begin
      if falling_edge(CLK) then
        if D='0' Then
           Q_tap <= not Q_tap;
        else 
           Q_tap <= Q_tap;
        end if;
        end if;
end process;
Q <= Q_tap;
Q_inv <= not Q_tap;

end Behavioral;