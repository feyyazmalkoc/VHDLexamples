--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:50:06 11/11/2018
-- Design Name:   
-- Module Name:   C:/Xilinx/odev1/testdlatch.vhd
-- Project Name:  odev1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dlatch
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
 
ENTITY testdlatch IS
END testdlatch;
 
ARCHITECTURE behavior OF testdlatch IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dlatch
    PORT(
         d : IN  std_logic;
         en : IN  std_logic;
         q : INOUT  std_logic;
         qnot : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic := '0';
   signal en : std_logic := '0';

	--BiDirs
   signal q : std_logic;
   signal qnot : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dlatch PORT MAP (
          d => d,
          en => en,
          q => q,
          qnot => qnot
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

en <= '1' after 25 ns, '0' after 35 ns, '1' after 55 ns, '0' after 75 ns, '1' after 85 ns, '0' after 95 ns;
d <= '1' after 10 ns, '0' after 20 ns, '1' after 30 ns, '0' after 40 ns, '1' after 60 ns, '0' after 65 ns, '1' after 80 ns, '0' after 90 ns;

END;
