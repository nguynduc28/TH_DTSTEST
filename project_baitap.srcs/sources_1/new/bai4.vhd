
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Bai_4 is
Port (
        clk    : in  STD_LOGIC;
        Q      : buffer STD_LOGIC_VECTOR(2 downto 0);
        Q_inv  : buffer STD_LOGIC_VECTOR(2 downto 0);
        y      : out STD_LOGIC
    );
end Bai_4;

architecture Behavioral of Bai_4 is
component T_FF is
      Port ( T : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : buffer STD_LOGIC;
           Q_inv : buffer STD_LOGIC);
           end component;
           
           signal T : STD_LOGIC_VECTOR(2 downto 0);
begin
T(0) <= Q_inv(1) or Q_inv(2);
T(1) <= Q(0);
T(2) <= Q(1);

TFF1: T_FF port map(T=>T(0),clk=>CLK,Q=>Q(0),Q_inv=>Q_inv(0));
TFF2: T_FF port map(T=>T(1),clk=>CLK,Q=>Q(1),Q_inv=>Q_inv(1));
TFF3: T_FF port map(T=>T(2),clk=>CLK,Q=>Q(2),Q_inv=>Q_inv(2));

y <= Q(1) and Q(2) ;
end Behavioral;