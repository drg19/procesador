library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity ALU is
    Port ( CRS1 : in  STD_LOGIC_VECTOR (31 downto 0);
           CRS2 : in  STD_LOGIC_VECTOR (31 downto 0);
           ALURESULT : out  STD_LOGIC_VECTOR (31 downto 0);
           ALUOP : in  STD_LOGIC_VECTOR (5 downto 0));
end ALU;

architecture Behavioral of ALU is

begin

	PROCESS(CRS1,CRS2, ALUOP)
	
		begin
		
			case(ALUOP) is
				when "000000" => -- add 
					ALURESULT <= CRS1 + CRS2;
					
				when "000101" => -- andn
					ALURESULT <= CRS1 NAND CRS2;
					
				when "000010" =>  --or
					ALURESULT <= CRS1 OR CRS2;
					
				when "000011" => --xor
					ALURESULT <= CRS1 XOR CRS2;
				
				when "000111" => --xnor
					ALURESULT <= CRS1 XOR not(CRS2);
					
				when "000110" => --nor
					ALURESULT <= CRS1 NOR CRS2;
					
				when "000100" => --sub
					ALURESULT <= CRS1 - CRS2;
					
				when "000001" => --and
					ALURESULT <= CRS1 AND CRS2;
					
				when others => -- Cae el nop
					AluResult <= (others=>'0');	
					
			 end case;		
		
	end process;

end Behavioral;

