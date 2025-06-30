----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.06.2025 15:26:20
-- Design Name: 
-- Module Name: ALU_8bit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values


-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_8bit is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           SEL : in STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0);
           FLAG : out STD_LOGIC);
end ALU_8bit;

architecture Behavioral of ALU_8bit is

begin
process (A,B,SEL)
 variable sum   : unsigned(8 downto 0);
 variable diff  : unsigned(8 downto 0);
 variable inc   : unsigned(8 downto 0);
 variable mult  : unsigned(15 downto 0);
 begin
 Y <= (others => '0'); --Default case
 FLAG <= '0';
 
 case SEL is
  when "0000" =>                -- ADDITION
   sum := ('0' & unsigned(A)) + ('0' & unsigned(B));
   Y <= std_logic_vector(sum(7 downto 0));
   FLAG <= std_logic(sum(8));
   
  when "0001" =>                -- SUBTRACTION
   diff := ('0' & unsigned(A)) - ('0' & unsigned(B));
   Y <= std_logic_vector(diff(7 downto 0));
   FLAG <= std_logic(diff(8));
  
  when "0010" =>                -- MULTIPLICATION
   mult := unsigned(A) * unsigned(B);
   Y <= std_logic_vector(mult(7 downto 0)); -- only lower 8 bit
   if mult(15 downto 8) /= "00000000" then
    FLAG <= '1';                                  -- OVERFLOW if over then 8 bit
   end if;
   
  when "0011" =>                -- DIVISION
   if B /= "00000000" then
    Y <= std_logic_vector(unsigned(A) / unsigned(B));
   else
    FLAG <= '1';                                         -- ERROR
   end if;
   
   when "0100" =>               -- NOT GATE || COMPLEMENT
    Y <= NOT A;
   
   when "0101" =>               -- AND OPRATION
    Y <= A AND B;
   
   when "0110" =>               -- OR OPRATION
    Y <= A OR B;
    
   when "0111" =>               -- NAND OPRATION
    Y <= A NAND B;
    
   when "1000" =>               -- NOR OPRATION
    Y <= A NOR B;
   
   when "1001" =>               -- XOR OPRATION
    Y <= A XOR B;
    
   when "1010" =>               -- XNOR OPRATION
    Y <= A XNOR B;
   
   when "1011" =>               -- INCREMENT OPRATION
    inc := ('0' & unsigned(A)) + 1;
    Y <= std_logic_vector(inc(7 downto 0));
    FLAG <= std_logic(inc(8));      -- IF OVERFLOW
   
   when "1100" =>                -- DECREMENT OPRATION
    Y <= std_logic_vector(unsigned(A) - 1);
   
   when "1101" =>               -- EQUALITY CHECK
    if A = B then
     FLAG <= '1';           -- if equal
    else
     FLAG <= '0';           -- if not equal
    end if;
   
   when "1110" =>               -- A is Greater or not
    if A > B then
     FLAG <= '1';  -- A is greater
    else 
     FLAG <= '0';  -- A is not greater
    end if;
    
   when "1111" =>                -- A is less or not
    if A < B then
     FLAG <= '1';  -- A is less
    else 
     FLAG <= '0';  -- A is not less
    end if;
   
   
  when others =>
   Y <= "ZZZZZZZZ";
   FLAG <= 'Z';
  end case;
  
end process;
end Behavioral;
