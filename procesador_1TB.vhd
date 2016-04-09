library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use std.textio.all;


ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pros1
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         ALUresult : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal ALUresult : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pros1 PORT MAP (
          clk => clk,
          reset => reset,
          ALUresult => ALUresult
        );
		  
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period;
		clk <= '1';
		wait for clk_period;
  end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		
		reset <= '0';
      wait for 100 ns;
		
		reset <= '1';
     

      wait;
   end process;

END;
