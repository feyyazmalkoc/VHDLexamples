----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:04:31 10/29/2018 
-- Design Name: 
-- Module Name:    mux2input - Structural 
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

entity mux2input is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           f : out  STD_LOGIC);
end mux2input;

architecture Structural of mux2input is

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


signal a1, a2, a3 : std_logic;
begin

stage0: notkapisi port map (sel,a1);
stage1: nandkapisi port map (a1,a,a2);
stage2: nandkapisi port map (sel,b,a3);
stage3: nandkapisi port map (a2,a3,f);


end Structural;

