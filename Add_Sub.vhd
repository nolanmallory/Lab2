----------------------------------------------------------------------------------
-- Company: USAFA ECE281
-- Engineer: Nolan Mallory
-- 
-- Create Date:    21:11:50 02/09/2014 
-- Design Name: 
-- Module Name:    Add_Sub - Behavioral 
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


entity Add_Sub is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
			  CIN : in STD_LOGIC;
			  BTN : in STD_LOGIC;
           SUM : out  STD_LOGIC_VECTOR (3 downto 0);
			  COUT : out STD_LOGIC);
end Add_Sub;

architecture Structural of Add_Sub is

component Full_Adder is 
	port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           CIN : in  STD_LOGIC;
           SUM : out  STD_LOGIC;
           COUT : out  STD_LOGIC);
end component Full_Adder;

signal C0,C1,C2,C3: STD_LOGIC;
signal NegB : std_logic_vector(3 downto 0);
begin

NegB <= Not B when BTN = '1' else B;
C0 <='0' when BTN = '0' else '1';

Bit0: component Full_Adder
   port map (A => A(0),
	 	       B => NegB(0),
				 CIN => C0,
				 SUM => SUM(0),
				 COUT => C1);

Bit1:component Full_Adder
   port map (A => A(1),
	 	       B => NegB(1),
				 CIN => C1,
				 SUM => SUM(1),
				 COUT => C2);
				 
Bit2:component Full_Adder
   port map (A => A(2),
	 	       B => NegB(2),
				 CIN => C2,
				 SUM => SUM(2),
				 COUT => C3);
				 
Bit3:	component Full_Adder
   port map (A => A(3),
	 	       B => NegB(3),
				 CIN => C3,
				 SUM => SUM(3),
				 COUT => COUT);		 
				 
end Structural;

