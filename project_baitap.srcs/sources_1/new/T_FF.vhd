library IEEE ;
use IEEE.STD_LOGIC_1164.ALL;

entity T_FF is
    Port ( T : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : buffer STD_LOGIC;
           Q_inv : buffer STD_LOGIC);
 end T_FF;
architecture Behavioral of T_FF is
    signal Q_tmp : STD_LOGIC := '0';
begin
    process(CLK)
    begin
        if falling_edge(CLK) then
            if T = '0' then
                Q_tmp <= Q_tmp;
            else
                Q_tmp <= not Q_tmp;
            end if;
        end if;
    end process;
    
    Q <= Q_tmp;
    Q_inv <= not Q_tmp;
end Behavioral;
