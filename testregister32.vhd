--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:30:56 11/11/2018
-- Design Name:   
-- Module Name:   C:/Xilinx/odev1/testregister32.vhd
-- Project Name:  odev1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: register32bit
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
 
ENTITY testregister32 IS
END testregister32;
 
ARCHITECTURE behavior OF testregister32 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register32bit
    PORT(
         d : IN  std_logic_vector(31 downto 0);
         clk : IN  std_logic;
         q : INOUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic_vector(31 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal q : std_logic_vector(31 downto 0) := (others => '0');

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register32bit PORT MAP (
          d => d,
          clk => clk,
          q => q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;


d <= "01010101010101010101010101010101", "11111111111111110101010101010101" after 25 ns, "11111111111111111111111111111111" after 75 ns;

END;
