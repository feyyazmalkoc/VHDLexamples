----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:39:56 10/29/2018 
-- Deselign Name: 
-- Module Name:    mux32bit - Behavioral 
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
use IEEE.STD_LOGIC_arith.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux32bit is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);           
           sel : in  STD_LOGIC_VECTOR (4 downto 0) ;
           f : out  STD_LOGIC);
end mux32bit;

architecture Structural of mux32bit is


	COMPONENT mux2input
	PORT(
		a : IN std_logic;
		b : IN std_logic;
		sel : IN std_logic;          
		f : OUT std_logic
		);
	END COMPONENT;
	
signal k : STD_LOGIC_VECTOR (15 downto 0); 
signal l : STD_LOGIC_VECTOR (7 downto 0); 
signal m : STD_LOGIC_VECTOR (3 downto 0); 
signal n : STD_LOGIC_VECTOR (1 downto 0); 

begin

m1: for i in 0 to 15 generate
stage1: mux2input port map   (a(2*i),a(2*i+1),sel(0),k(i));
end generate;

m2: for i in 0 to 7 generate
stage2: mux2input port map   (k(2*i),k(2*i+1),sel(1),l(i));
end generate;

m3: for i in 0 to 3 generate
stage3: mux2input port map   (l(2*i),l(2*i+1),sel(2),m(i));
end generate;

m4: for i in 0 to 1 generate
stage4: mux2input port map   (m(2*i),m(2*i+1),sel(3),n(i));
end generate;

sonuc: mux2input port map   (n(0),n(1),sel(4),f);


--
--stage0: mux2input port map   (a(0),a(1),sel(0),k(0));
--stage1: mux2input port map   (a(2),a(3),sel(0),k(1));
--stage2: mux2input port map   (a(4),a(5),sel(0),k(2));
--stage3: mux2input port map   (a(6),a(7),sel(0),k(3));
--stage4: mux2input port map   (a(8),a(9),sel(0),k(4));
--stage5: mux2input port map   (a(10),a(11),sel(0),k(5));
--stage6: mux2input port map   (a(12),a(13),sel(0),k(6));
--stage7: mux2input port map   (a(14),a(15),sel(0),k(7));
--stage8: mux2input port map   (a(16),a(17),sel(0),k(8));
--stage9: mux2input port map   (a(18),a(19),sel(0),k(9));
--stage10: mux2input port map   (a(20),a(21),sel(0),k(10));
--stage11: mux2input port map   (a(22),a(23),sel(0),k(11));
--stage12: mux2input port map   (a(24),a(25),sel(0),k(12));
--stage13: mux2input port map   (a(26),a(27),sel(0),k(13));
--stage14: mux2input port map   (a(28),a(29),sel(0),k(14));
--stage15: mux2input port map   (a(30),a(31),sel(0),k(15));
--                             
--stage16: mux2input port map   (k(0),k(1),sel(1),l(0));
--stage17: mux2input port map   (k(2),k(3),sel(1),l(1));
--stage18: mux2input port map   (k(4),k(5),sel(1),l(2));
--stage19: mux2input port map   (k(6),k(7),sel(1),l(3));
--stage20: mux2input port map   (k(8),k(9),sel(1),l(4));
--stage21: mux2input port map   (k(10),k(11),sel(1),l(5));
--stage22: mux2input port map   (k(12),k(13),sel(1),l(6));
--stage23: mux2input port map   (k(14),k(15),sel(1),l(7));
--                             
--stage24: mux2input port map   (l(0),l(1),sel(2),m(0));
--stage25: mux2input port map   (l(2),l(3),sel(2),m(1));
--stage26: mux2input port map   (l(4),l(5),sel(2),m(2));
--stage27: mux2input port map   (l(6),l(7),sel(2),m(3));
--                             
--stage28: mux2input port map   (m(0),m(1),sel(3),n(0));
--stage29: mux2input port map   (m(2),m(3),sel(3),n(1));
--     
--stage30: mux2input port map   (n(0),n(1),sel(4),f);	  



end structural;

