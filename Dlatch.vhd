----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Feyyaz Malkoc
-- 
-- Create Date:    15:42:01 11/11/2018 
-- Design Name: 
-- Module Name:    dlatch - Behavioral 
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

entity dlatch is
    Port ( d : in  STD_LOGIC;
           en : in  STD_LOGIC;
           q : inout  STD_LOGIC;
           qnot : inout  STD_LOGIC);
end dlatch;

architecture Behavioral of dlatch is

-- KOMPONENT TANIMLAMA

	
	COMPONENT notkapisi
	PORT(
		a : IN std_logic;          
		b : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT nandkapisi
	PORT(
		a : IN std_logic;
		b : IN std_logic;          
		c : OUT std_logic
		);
	END COMPONENT;
	

signal a1, a2, a3 : std_logic;

begin

stage0: notkapisi port map(d, a1);
stage1: nandkapisi port map(d, en, a2);
stage2: nandkapisi port map(a1, en, a3);
stage3: nandkapisi port map(a2, qnot, q);
stage4: nandkapisi port map(a3, q, qnot);


end Behavioral;

