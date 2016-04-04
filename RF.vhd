----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:16:18 03/31/2016 
-- Design Name: 
-- Module Name:    RF - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RF is
    Port ( rs1 : in  STD_LOGIC_VECTOR (0 downto 5);
           rs2 : in  STD_LOGIC_VECTOR (0 downto 5);
           rd : in  STD_LOGIC_VECTOR (0 downto 5);
           reset : in  STD_LOGIC;
           DataToWrite : in  STD_LOGIC_VECTOR (0 downto 31);
           CRS1 : out  STD_LOGIC_VECTOR (0 downto 31);
           CRS2 : out  STD_LOGIC_VECTOR (0 downto 31));
end RF;

architecture Behavioral of RF is

begin


end Behavioral;

