library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

 
ENTITY ALUtb IS
END ALUtb;
 
ARCHITECTURE behavior OF ALUtb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         CRS1 : IN  std_logic_vector(31 downto 0);
         CRS2 : IN  std_logic_vector(31 downto 0);
         ALURESULT : OUT  std_logic_vector(31 downto 0);
         ALUOP : IN  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CRS1 : std_logic_vector(31 downto 0) := (others => '0');
   signal CRS2 : std_logic_vector(31 downto 0) := (others => '0');
   signal ALUOP : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal ALURESULT : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          CRS1 => CRS1,
          CRS2 => CRS2,
          ALURESULT => ALURESULT,
          ALUOP => ALUOP
        );


   -- Stimulus process
   stim_proc: process
   begin		
      
		
	 CRS1 <= "00000000000000000000000000000001";
    CRS2 <= "00000000000000000000000000000010";
	 ALUOP <= "000000";
      wait for 100 ns;	


     CRS1 <= "00000000000000000000000000000101";
     CRS2 <= "00000000000000000000000000000010";
	  ALUOP <= "000010";
	  wait for 100 ns;	
      

      wait;
   end process;

END;
