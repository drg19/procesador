library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use std.textio.all;


entity pros1 is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ALUresult : out  STD_LOGIC_VECTOR (31 downto 0));
end pros1;

architecture Behavioral of pros1 is

	component IM 
    Port ( reset : in  STD_LOGIC;
           adres : in  STD_LOGIC_VECTOR (31 downto 0);
           IMout : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	component ALU 
    Port ( CRS1 : in  STD_LOGIC_VECTOR (31 downto 0);
           CRS2 : in  STD_LOGIC_VECTOR (31 downto 0);
           ALURESULT : out  STD_LOGIC_VECTOR (31 downto 0);
           ALUOP : in  STD_LOGIC_VECTOR (5 downto 0));
	end component;
	
	component PC 
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           address  : in  STD_LOGIC_VECTOR(31 downto 0) ;
           next_instruction : out  STD_LOGIC_VECTOR(31 downto 0));
	end component;
	
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
	
	component Sumador 
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Cout : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	component UC 
    Port ( op : in  STD_LOGIC_VECTOR(1 downto 0);
           op3  : in  STD_LOGIC_VECTOR(5 downto 0);
           Aluop : out  STD_LOGIC_VECTOR(5 downto 0));
	end component;
	
	component nPC 
    Port ( addres : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           sgteinstruccion : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;


signal C,D,E,F,G,H,I,J: STD_LOGIC_VECTOR (31 downto 0);

begin


	nextPC : nPC
	port map( addres => D,
				 clk => clk,
				 reset => reset,
				 sgteinstruccion => C
			);
------------------------------------		
	Program_Counter : PC	
	port map (
					clk => clk,
					reset => reset,
					address => C,
					next_instruction => E
					
				);
				
-----------------------------------
	Sum: Sumador
	port map(
					A => "00000000000000000000000000000001",
					B => C,
					Cout => D
				);

---------------------------------

	Instruction_M : IM
	port map(
				  reset => reset,
				  adres => E,
              IMout => F
				);
---------------------------------

	Unidad_c : UC
	port map(
					op => F(31 downto 30),
					op3  => F(24 downto 19),
					Aluop => G(5 downto 0)
				);

--------------------------------

	Register_F : registerFile
	port map (
					rs1 => F(18 downto 14),
					rs2 =>F(4 downto 0),
					rd  =>F(29 downto 25),
					reset => reset,
					DataToWrite => J,
					CRS1 => H,
					CRS2 => I
				 );
-----------------------------------------------

	 aluu : ALU		
    Port map( 
					CRS1 => H,
					CRS2 => I,
					ALUOP =>G(5 downto 0),
					ALURESULT => J
				);
				
----------------------------------------------
ALURESULT <= J;

end Behavioral;

