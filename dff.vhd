----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:38:05 11/11/2018 
-- Design Name: 
-- Module Name:    dff - Behavioral 
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

entity dff is
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : inout  STD_LOGIC;
			  qnot : out  STD_LOGIC);
end dff;

architecture Behavioral of dff is


COMPONENT notkapisi
	PORT(
		a : IN std_logic;          
		b : OUT std_logic
		);
	END COMPONENT;

signal temp : STD_LOGIC:='0';


begin

process(clk)
	begin
	
		if(clk'event and clk='1') then
			
			q <= d;
			
		end if;
		
end process;
	temp <= q;
	stage0: notkapisi port map(temp,qnot);

end Behavioral;

