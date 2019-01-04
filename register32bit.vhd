----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:08:13 11/11/2018 
-- Design Name: 
-- Module Name:    register32bit - Behavioral 
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

entity register32bit is
    Port ( d : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           q : inout  STD_LOGIC_VECTOR (31 downto 0));
end register32bit;

architecture Behavioral of register32bit is

signal register32 : STD_LOGIC_VECTOR (31 downto 0):=x"00000000";

begin

process(clk)
	begin
	
		if(clk'event and clk='1') then
		
			register32(0) <=  d(0) ;
			register32(1) <=  d(1) ;
			register32(2) <=  d(2) ;
			register32(3) <=  d(3) ;
			register32(4) <=  d(4) ;
			register32(5) <=  d(5) ;
			register32(6) <=  d(6) ;
			register32(7) <=  d(7) ;
			register32(8) <=  d(8) ;
			register32(9) <=  d(9) ;
			register32(10) <= d(10);
			register32(11) <= d(11);
			register32(12) <= d(12);
			register32(13) <= d(13);
			register32(14) <= d(14);
			register32(15) <= d(15);
			register32(16) <= d(16);
			register32(17) <= d(17);
			register32(18) <= d(18);
			register32(19) <= d(19);
			register32(20) <= d(20);
			register32(21) <= d(21);
			register32(22) <= d(22);
			register32(23) <= d(23);
			register32(24) <= d(24);
			register32(25) <= d(25);
			register32(26) <= d(26);
			register32(27) <= d(27);
			register32(28) <= d(28);
			register32(29) <= d(29);
			register32(30) <= d(30);
			register32(31) <= d(31);
		end if;
	
end process;

q <= register32;

end Behavioral;

