--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:42:20 10/29/2018
-- Design Name:   
-- Module Name:   C:/Xilinx/odev1/testbirbitfulladder_nand_ile.vhd
-- Project Name:  odev1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: birbitfulladder_nand_ile
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
 
ENTITY testbirbitfulladder_nand_ile IS
END testbirbitfulladder_nand_ile;
 
ARCHITECTURE behavior OF testbirbitfulladder_nand_ile IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT birbitfulladder_nand_ile
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         cin : IN  std_logic;
         cout : OUT  std_logic;
         s : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal cin : std_logic := '0';

 	--Outputs
   signal cout : std_logic;
   signal s : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: birbitfulladder_nand_ile PORT MAP (
          a => a,
          b => b,
          cin => cin,
          cout => cout,
          s => s
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

a   <= '0', '0' after 10 ns, '0' after 20 ns, '0' after 30 ns, '1' after 40 ns, '1' after 50 ns, '1' after 60 ns, '1' after 70 ns;
b   <= '0', '0' after 10 ns, '1' after 20 ns, '1' after 30 ns, '0' after 40 ns, '0' after 50 ns, '1' after 60 ns, '1' after 70 ns;
cin <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 30 ns, '0' after 40 ns, '1' after 50 ns, '0' after 60 ns, '1' after 70 ns; 



END;
