----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:10:20 04/11/2024 
-- Design Name: 
-- Module Name:    VGA - Behavioral 
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


ENTITY VGA IS
	PORT(
	Clk: in  STD_LOGIC;
	VGA_HS,VGA_VS:OUT STD_LOGIC;
	VGA_R,VGA_B,VGA_G: OUT STD_LOGIC
	);
END VGA;


ARCHITECTURE MAIN OF VGA IS
	COMPONENT SYNC IS
		PORT(
			Clk: in  STD_LOGIC;
			HSYNC: OUT STD_LOGIC;
			VSYNC: OUT STD_LOGIC;
			R: OUT STD_LOGIC;
			G: OUT STD_LOGIC;
			B: OUT STD_LOGIC
		);
END COMPONENT SYNC;
 BEGIN
 
 C1: SYNC PORT MAP(Clk,VGA_HS,VGA_VS,VGA_R,VGA_G,VGA_B);
 
 END MAIN;
 