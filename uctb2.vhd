
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY uctb2 IS
END uctb2;
 
ARCHITECTURE behavior OF uctb2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UC
    PORT(
         op : IN  std_logic_vector(1 downto 0);
         op3 : IN  std_logic_vector(5 downto 0);
         Aluop : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal op : std_logic_vector(1 downto 0) := (others => '0');
   signal op3 : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal Aluop : std_logic_vector(5 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UC PORT MAP (
          op => op,
          op3 => op3,
          Aluop => Aluop
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
     	
		op <= "10";
		op3 <= "000000";
		wait for 100 ns;
		
		op <= "10";
		op3 <= "000001";
		wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
