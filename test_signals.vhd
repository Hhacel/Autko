--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:25:14 04/11/2024
-- Design Name:   
-- Module Name:   C:/Users/lab/Desktop/Nowy_Samochod/Samochod/Autko/test_signals.vhd
-- Project Name:  Autko
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SYNC
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
 
ENTITY test_signals IS
END test_signals;
 
ARCHITECTURE behavior OF test_signals IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SYNC
    PORT(
         Clk : IN  std_logic;
         HSYNC : OUT  std_logic;
         VSYNC : OUT  std_logic;
         R : OUT  std_logic;
         G : OUT  std_logic;
         B : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';

 	--Outputs
   signal HSYNC : std_logic;
   signal VSYNC : std_logic;
   signal R : std_logic;
   signal G : std_logic;
   signal B : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SYNC PORT MAP (
          Clk => Clk,
          HSYNC => HSYNC,
          VSYNC => VSYNC,
          R => R,
          G => G,
          B => B
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.0

      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
