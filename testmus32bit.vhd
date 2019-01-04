--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:11:39 10/29/2018
-- Design Name:   
-- Module Name:   C:/Xilinx/odev1/testmux32bit.vhd
-- Project Name:  odev1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux32bit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testmux32bit IS
END testmux32bit;
 
ARCHITECTURE behavior OF testmux32bit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux32bit
    PORT(
         a : IN  std_logic_vector(31 downto 0);
         sel : IN  std_logic_vector(4 downto 0);
         f : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(31 downto 0) := (others => '0');
   signal sel : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal f : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 --  constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux32bit PORT MAP (
          a => a,
          sel => sel,
          f => f
        );

--   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 
--
--   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for <clock>_period*10;
--
--      -- insert stimulus here 
--
--      wait;
--   end process;

a <= "01100110011100000110011101100001";
sel <= "00000",
		 "00001" after 25 ns,
		 "00010" after 50 ns,
		 "00011" after 75 ns,
		 "00100" after 100 ns,
		 "00101" after 125 ns,
		 "00110" after 150 ns,
		 "00111" after 175 ns,
		 "01000" after 200 ns,
		 "01001" after 225 ns,
		 "01010" after 250 ns,
		 "01011" after 275 ns,
		 "01100" after 300 ns,
		 "01101" after 325 ns,
		 "01110" after 350 ns,
	    "01111" after 375 ns,
		 "10000" after 400 ns,
		 "10001" after 425 ns,
       "10010" after 450 ns,
       "10011" after 475 ns,
		 "10100" after 500 ns,
       "10101" after 525 ns,
       "10110" after 550 ns,
       "10111" after 575 ns,
       "11000" after 600 ns,
       "11001" after 625 ns,
       "11010" after 650 ns,
       "11011" after 675 ns,
       "11100" after 700 ns,
       "11101" after 725 ns,
       "11110" after 750 ns,
       "11111" after 775 ns;
END;