----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.06.2025 18:48:41
-- Design Name: 
-- Module Name: ALU_8bit_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_8bit_tb is
--  Port ( );
end ALU_8bit_tb;

architecture Behavioral of ALU_8bit_tb is
component ALU_8bit
  Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           SEL : in STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0);
           FLAG : out STD_LOGIC);
end component;

signal a, b, output : std_logic_vector(7 downto 0);
signal s : std_logic_vector(3 downto 0);
signal flag : std_logic;
begin
 uut: ALU_8bit port map (a, b, s, output, flag);
 process
 begin
  a <= "00001100";       -- 12
  b <= "00000110";      -- 6
  wait for 20 ns;
  
  s <= "0000";  -- ADDITION
  wait for 20 ns;
  
  s <= "0001";  -- SUBRACTION
  wait for 20 ns;
  
  s <= "0010";  -- MULTIPLICATIN
  wait for 20 ns;
  
  s <= "0011";  -- DIVISION
  wait for 20 ns;
  
  s <= "0100";  -- NOT OPRATION
  wait for 20 ns;
  
  s <= "0101";  -- AND OPRATION
  wait for 20 ns;
  
  s <= "0110";  -- OR OPRATION
  wait for 20 ns;
  
  s <= "0111";  -- NAND OPRATION
  wait for 20 ns;
  
  s <= "1000";  -- NOR OPRATION
  wait for 20 ns;
  
  s <= "1001";  -- XOR OPRATION
  wait for 20 ns;
  
  s <= "1010";  -- XNOR OPRATION
  wait for 20 ns;
  
  s <= "1011";  -- INCREMENT
  wait for 20 ns;
  
  s <= "1100";  -- DECREMENT
  wait for 20 ns;
  
  s <= "1101";  -- EUQALITY CHECK
  wait for 20 ns;
  
  s <= "1110";  --  GREATER CHECK
  wait for 20 ns;
  
  s <= "1111";  -- LESS CHECK
  wait for 20 ns;
  wait;
  end process;
end Behavioral;
