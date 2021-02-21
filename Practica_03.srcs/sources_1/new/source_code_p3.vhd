----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.02.2021 23:23:11
-- Design Name: 
-- Module Name: source_code_p3 - Behavioral
-- Project Name: PRÁCTICA 3
-- Target Devices: NEXYS 4
-- Tool Versions: 4
-- Description: PRÁCTICA DE LABORATORIO NO.3
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity source_code_p3 is
    Port ( P1 : in STD_LOGIC;
           P2 : in STD_LOGIC;
           P3 : in STD_LOGIC;
           A : out STD_LOGIC;
           B : out STD_LOGIC;
           C : out STD_LOGIC;
           D : out STD_LOGIC);
end source_code_p3;

architecture Behavioral of source_code_p3 is

begin

A <= (P1 AND P2 AND P3);
B <= (NOT P1 OR NOT P2 OR NOT P3);
C <= (P2 AND P3) OR (P1 AND P3) OR (P1 AND P2);
D <= (NOT P1 AND NOT P2) OR (NOT P1 AND NOT P3) OR (NOT P2 AND NOT P3);

end Behavioral;
