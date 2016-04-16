--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:19:37 04/05/2016
-- Design Name:   
-- Module Name:   C:/Xilinx/procesador/registerfileTB.vhd
-- Project Name:  procesador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registerFile
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY registerfileTB IS
END registerfileTB;
 
ARCHITECTURE behavior OF registerfileTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registerFile
    PORT(
         reset : IN  std_logic;
         rS1 : IN  std_logic_vector(4 downto 0);
         rS2 : IN  std_logic_vector(4 downto 0);
         rD : IN  std_logic_vector(4 downto 0);
         dataToWrite : IN  std_logic_vector(31 downto 0);
         cRS1 : OUT  std_logic_vector(31 downto 0);
         cRS2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal rS1 : std_logic_vector(4 downto 0) := (others => '0');
   signal rS2 : std_logic_vector(4 downto 0) := (others => '0');
   signal rD : std_logic_vector(4 downto 0) := (others => '0');
   signal dataToWrite : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal cRS1 : std_logic_vector(31 downto 0);
   signal cRS2 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registerFile PORT MAP (
          reset => reset,
          rS1 => rS1,
          rS2 => rS2,
          rD => rD,
          dataToWrite => dataToWrite,
          cRS1 => cRS1,
          cRS2 => cRS2
        );


   -- Stimulus process
   stim_proc: process
   begin		
		reset <= '1';
		rS1 <= "00001";
		rS2 <= "00100";
		rD  <= "00101";
		dataToWrite <= "00000000000000000000000000001110";
      wait for 100 ns;	

      -- insert stimulus here 

      wait;
   end process;

END;
