----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:13:58 12/03/2018 
-- Design Name: 
-- Module Name:    mux2input16bbus - Behavioral 
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

entity mux2input16bbus is
    Port ( a : in  STD_LOGIC_VECTOR (15 downto 0);
           b : in  STD_LOGIC_VECTOR (15 downto 0);
           sel : in  STD_LOGIC;
           f : out  STD_LOGIC_VECTOR (15 downto 0));
end mux2input16bbus;

architecture Behavioral of mux2input16bbus is

COMPONENT mux2input
	PORT(
		a : IN std_logic;
		b : IN std_logic;
		sel : IN std_logic;          
		f : OUT std_logic
		);
	END COMPONENT;

begin

m1: for i in 0 to 15 generate
stage0: mux2input port map(a(i),b(i),sel,f(i));
end generate;

end Behavioral;

