--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:13:02 02/10/2014
-- Design Name:   
-- Module Name:   C:/Users/C15Nolan.Mallory/Documents/ECE281/Lab2/Four_Bit_testbench.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Add_Sub
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
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY Four_Bit_testbench IS
END Four_Bit_testbench;
 
ARCHITECTURE behavior OF Four_Bit_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Add_Sub
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
			CIN : IN std_logic;
         SUM : OUT  std_logic_vector(3 downto 0);
         COUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
	signal CIN : std_logic := '0';

 	--Outputs
   signal SUM : std_logic_vector(3 downto 0);
   signal COUT : std_logic;
  

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Add_Sub PORT MAP (
          A => A,
          B => B,
			 CIN => CIN,
          SUM => SUM,
          COUT => COUT);

   -- Stimulus process
   stim_proc: process
   begin	
	
      A <= ( 3 downto 0 =>'0' );
		B <= ( 3 downto 0 =>'0' );
		CIN <= '0';
			
			for I in 0 to 15 loop
				for J in 0 to 15 loop
					wait for 10ns;
					assert (SUM = A + B) report "Expected sum of " &
						integer'image(to_integer(unsigned((A + B)))) & " for A = " &
						integer'image(to_integer(unsigned((A)))) & " and B = " &
						integer'image(to_integer(unsigned((B)))) & ", but was ' " &
						integer'image(to_integer(unsigned((SUM)))) severity ERROR;
						B <= B + "0001";
				end loop;
				A <= A + "0001";
			end loop;
			report "The Test is Complete:)";
			wait;
		end process;

END;
