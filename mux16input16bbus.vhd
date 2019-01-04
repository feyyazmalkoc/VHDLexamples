----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:17:23 12/03/2018 
-- Design Name: 
-- Module Name:    mux16input16bbus - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package arraytipi is
        type bus_array is array(natural range <>) of std_logic_vector(15 downto 0);
end package;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.arraytipi.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux16input16bbus is
    Port ( a : in  bus_array(15 downto 0);
           sel : in  STD_LOGIC_VECTOR (3 downto 0);
           f : out  STD_LOGIC_VECTOR(15 downto 0));
end mux16input16bbus;

architecture Behavioral of mux16input16bbus is

COMPONENT mux2input16bbus
	PORT(
		a : IN std_logic_vector(15 downto 0);
		b : IN std_logic_vector(15 downto 0);
		sel : IN std_logic;          
		f : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;


signal l : bus_array (7 downto 0); 
signal m : bus_array (3 downto 0); 
signal n : bus_array (1 downto 0); 


begin


m1: for i in 0 to 7 generate
stage0: mux2input16bbus port map   (a(2*i),a(2*i+1),sel(0),l(i));
end generate;

m2: for i in 0 to 3 generate
stage1: mux2input16bbus port map   (l(2*i),l(2*i+1),sel(1),m(i));
end generate;

m3: for i in 0 to 1 generate
stage2: mux2input16bbus port map   (m(2*i),m(2*i+1),sel(2),n(i));
end generate;

sonuc: mux2input16bbus port map   (n(0),n(1),sel(3),f);


end Behavioral;

