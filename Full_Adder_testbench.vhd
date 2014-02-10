--------------------------------------------------------------------------------
-- Company: USAFA ECE281
-- Engineer: Nolan Mallory
--
-- Create Date:   17:33:11 02/08/2014
-- Design Name:   
-- Module Name:   C:/Users/C15Nolan.Mallory/Documents/ECE281/Lab2/Full_Adder_testbench.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Full_Adder
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
 
ENTITY Full_Adder_testbench IS
END Full_Adder_testbench;
 
ARCHITECTURE behavior OF Full_Adder_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Full_Adder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         CIN : IN  std_logic;
         SUM : OUT  std_logic;
         COUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal CIN : std_logic := '0';

 	--Outputs
   signal SUM : std_logic;
   signal COUT : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Full_Adder PORT MAP (
          A => A,
          B => B,
          CIN => CIN,
          SUM => SUM,
          COUT => COUT
        );

   -- Clock process definitions
   --<clock>_process :process
  -- begin
	--	<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
 		--wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;	

		A <= '0';
		B <= '0';
		CIN <= '0';
		wait for 100 ns;	
		
		A <= '0';
		B <= '0';
		CIN <= '1';
		wait for 100 ns;	
		
		A <= '0';
		B <= '1';
		CIN <= '0';
		wait for 100 ns;
		
		A <= '0';
		B <= '1';
		CIN <= '0';
		wait for 100 ns;
		
		A <= '0';
		B <= '1';
		CIN <= '1';
		wait for 100 ns;
		
		A <= '1';
		B <= '0';
		CIN <= '0';
		wait for 100 ns;
		
		A <= '1';
		B <= '0';
		CIN <= '1';
		wait for 100 ns;

		A <= '1';
		B <= '1';
		CIN <= '0';
		wait for 100 ns;
		
		A <= '1';
		B <= '1';
		CIN <= '1';
		wait for 100 ns;

      wait;
   end process;

END;
