----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.02.2021 23:27:18
-- Design Name: 
-- Module Name: tb_source_code_p3 - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_source_code_p3 is
--  Port ( );
end tb_source_code_p3;

-- Conexi�n del testbench al dise�o deseado. En este caso "source_code_p3"
architecture Behavioral of tb_source_code_p3 is
component source_code_p3 is
    Port (  P1 : in STD_LOGIC;
            P2 : in STD_LOGIC;
            P3 : in STD_LOGIC;
            A : out STD_LOGIC;
            B : out STD_LOGIC;
            C : out STD_LOGIC;
            D : out STD_LOGIC);
end component;

-- Creaci�n de se�ales de estimulaci�n y monitoreo
signal P1_s : STD_LOGIC;
signal P2_s : STD_LOGIC;
signal P3_s : STD_LOGIC;
signal A_s : STD_LOGIC;
signal B_s : STD_LOGIC;
signal C_s : STD_LOGIC;
signal D_s : STD_LOGIC;

begin

--Mapeo de entradas y salidas a se�ales del testbench
DUT: source_code_p3 port map(
        P1 => P1_s,
        P2 => P2_s,
        P3 => P3_s,
        A => A_s,
        B => B_s,
        C => C_s,
        D => D_s);
        
-- Estimulaci�n de entradas mediante se�ales de testbench
process 
begin
        P1_s <= '0';
        P2_s <= '0';
        P3_s <= '0';
        
        wait for 10 ns;
        
        P1_s <= '0';
        P2_s <= '0';
        P3_s <= '1';
        
        wait for 10 ns;
        
        P1_s <= '0';
        P2_s <= '1';
        P3_s <= '0';
        
        wait for 10 ns;
        
        P1_s <= '0';
        P2_s <= '1';
        P3_s <= '1';
        
        wait for 10 ns;
        
        P1_s <= '1';
        P2_s <= '0';
        P3_s <= '0';
        
        wait for 10 ns;
        
        P1_s <= '1';
        P2_s <= '0';
        P3_s <= '1';
        
        wait for 10 ns;
        
        P1_s <= '1';
        P2_s <= '1';
        P3_s <= '0';
        
        wait for 10 ns;
        
        P1_s <= '1';
        P2_s <= '1';
        P3_s <= '1';
        
     wait;
     end process;   
end Behavioral;
















