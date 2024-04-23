----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:12:01 04/11/2024 
-- Design Name: 
-- Module Name:    DISP - Behavioral 
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

ENTITY SYNC IS
	PORT(
		Clk: in  STD_LOGIC;
		HSYNC: OUT STD_LOGIC;
		VSYNC: OUT STD_LOGIC;
		R: OUT STD_LOGIC;
		G: OUT STD_LOGIC;
		B: OUT STD_LOGIC
	);
END SYNC;


ARCHITECTURE MAIN OF SYNC IS

SIGNAL R, G, B: STD_LOGIC;
SIGNAL DRAW: STD_LOGIC;
SIGNAL SQ_X, SQ_Y: INTEGER RANGE 0 TO 1040:=0;
SIGNAL HPOS: INTEGER RANGE 0 TO 1040:=0;
SIGNAL VPOS: INTEGER RANGE 0 TO 666:=0;
BEGIN
SQ_X<=640;
SQ_Y<=366;
SQ(HPOS, VPOS, SQ_X, SQ_Y, R, G, B, DRAW);
 PROCESS(Clk)
 BEGIN
	IF(Clk'Event AND Clk='1')THEN
		IF(DRAW='1')THEN
			R <= R;
			G <= G;
	 		B <= B;
	 	ELSE
			R<='0';
			G<='0';
	 		B<='0';
		END IF;
		-- IF(HPOS=640 OR VPOS=366) THEN
		-- 	R<='1';
		-- 	G<='1';
		-- 	B<='1';
		-- ELSE
		-- 	R<='0';
		-- 	G<='0';
		-- 	B<='0'; 
		-- END IF;
		IF(HPOS<1040)THEN
			HPOS<=HPOS+1;
		ELSE
			HPOS<=0;
			IF(VPOS<666)THEN
				VPOS<=VPOS+1;
			ELSE
				VPOS<=0;
			END IF;
		END IF;
		IF((HPOS>0 AND HPOS<240) OR (VPOS>0 AND VPOS<66))THEN
			R<='0';
			G<='0';
			B<='0';
		END IF;
		IF(HPOS>56 AND HPOS<176)THEN----HSYNC
			HSYNC<='0';
		ELSE
			HSYNC<='1';
		END IF;
		IF(VPOS>37 AND VPOS<43)THEN----VSYNC
			VSYNC<='0';
		ELSE
			VSYNC<='1';
		END IF;
	END IF;
 END PROCESS;
 END MAIN;

