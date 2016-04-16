
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use std.textio.all;

ENTITY IMtb IS
END IMtb;
 
ARCHITECTURE behavior OF IMtb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IM
    PORT(
         reset : IN  std_logic;
         adres : IN  std_logic_vector(31 downto 0);
         IMout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal adres : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal IMout : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--//////////////////////////////////////////////    
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IM PORT MAP (
          reset => reset,
          adres => adres,
          IMout => IMout
        ); 

   -- Stimulus process
   stim_proc: process
   begin
		reset <='0';
      adres <= "00000000000000000000000000000010";
   end process;

END;
