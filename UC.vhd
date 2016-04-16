
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UC is
    Port ( op : in  STD_LOGIC_VECTOR(1 downto 0);
           op3  : in  STD_LOGIC_VECTOR(5 downto 0);
           Aluop : out  STD_LOGIC_VECTOR(5 downto 0));
end UC;

architecture Behavioral of UC is

begin
process (op,op3)
	begin
		if(op = "10") then
			case op3 is
				when "000000" => 
						Aluop <= "000000";---ADD
				when "000100" => 
						Aluop <= "000100";--- SUB
				when "000101" =>
						Aluop <= "000101"; ---ANDN
				when "000011" =>
						Aluop <= "000011";--XOR
				when "000010" =>
						Aluop <= "000010";--OR
				when "000110" =>
						Aluop <= "000110";--NOR
				when "000111" =>
						Aluop <= "000111";--XOR
				when "000001" =>
						Aluop <= "000001";--AND
				when others =>
						Aluop <= "111111";--others
			end case;
				
		end if;	
end process;		

end Behavioral;

