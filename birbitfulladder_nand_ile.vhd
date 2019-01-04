----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:24:53 10/29/2018 
-- Design Name: 
-- Module Name:    birbitfulladder_nand_ile - Structural 
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

entity birbitfulladder_nand_ile is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           s : out  STD_LOGIC);
end birbitfulladder_nand_ile;

architecture Structural of birbitfulladder_nand_ile is

-- KOMPONENT TANIMLAMA
COMPONENT xorkapisi
	PORT(
		a : IN std_logic;
		b : IN std_logic;          
		c : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT notkapisi
	PORT(
		a : IN std_logic;          
		b : OUT std_logic
		);
	END COMPONENT;
	
COMPONENT norkapisi
	PORT(
		a : IN std_logic;
		b : IN std_logic;          
		c : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT nandkapisi
	PORT(
		a : IN std_logic;
		b : IN std_logic;          
		c : OUT std_logic
		);
	END COMPONENT;

--SINYAL TANIMLAMA
signal a1, a2, a3, a4, a5, a6, a7 : std_logic;

begin

stage0: nandkapisi port map (a,b,a1);
stage1: nandkapisi port map (a1,a,a2);
stage2: nandkapisi port map (a1,b,a3);
stage3: nandkapisi port map (a2,a3,a4);
stage4: nandkapisi port map (a4,cin,a5);
stage5: nandkapisi port map (a5,a4,a6);
stage6: nandkapisi port map (a5,cin,a7);
stage7: nandkapisi port map (a7,a6,s);
stage8: nandkapisi port map (a1,a5,cout);


end Structural;

