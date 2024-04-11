--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:51:07 04/11/2024
-- Design Name:   
-- Module Name:   C:/Users/lab/Desktop/Nowy_Samochod/Samochod/Autko/test_top_com.vhd
-- Project Name:  Autko
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: VGA
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
 
ENTITY test_top_com IS
END test_top_com;
 
ARCHITECTURE behavior OF test_top_com IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT VGA
    PORT(
         Clk : IN  std_logic;
         VGA_HS : OUT  std_logic;
         VGA_VS : OUT  std_logic;
         VGA_R : OUT  std_logic;
         VGA_B : OUT  std_logic;
         VGA_G : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';

 	--Outputs
   signal VGA_HS : std_logic;
   signal VGA_VS : std_logic;
   signal VGA_R : std_logic;
   signal VGA_B : std_logic;
   signal VGA_G : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: VGA PORT MAP (
          Clk => Clk,
          VGA_HS => VGA_HS,
          VGA_VS => VGA_VS,
          VGA_R => VGA_R,
          VGA_B => VGA_B,
          VGA_G => VGA_G
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
