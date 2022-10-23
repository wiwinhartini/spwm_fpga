----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/19/2018 03:51:23 PM
-- Design Name: 
-- Module Name: PWM_hx2 - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PWM_bap is
    Generic ( WIDTH_P   : Integer range 0 to 20 := 12);

            
    Port ( clk_in       : in STD_LOGIC;              
           offset       : in STD_LOGIC_VECTOR (11 downto 0);
           duty         : in STD_LOGIC_VECTOR (11 downto 0);
           pwm_bap      : out STD_LOGIC;
           pwm_ban      : out STD_LOGIC);

end PWM_bap;

architecture Behavioral of PWM_bap is

    type states is (load_new_duty, pwm_low, pwm_high);
    signal state_of_machine : states;

begin

    StateMachinehx2     : process (clk_in)
    variable d1         : Integer range 0 to ((2**Width_P)-1) := 0;
    variable d2         : Integer range 0 to ((2**Width_P)-1) := 0;
    variable d12        : Integer range 0 to ((2**Width_P)-1) := 0;
    variable count      : Integer range 0 to ((2**Width_P)-1) := 0;
    constant boundary   : Integer := ((2**Width_P)-1);
    
    variable toggle     : STD_LOGIC := '0';
    
   
    
    begin
    
    if rising_edge(clk_in) then       
    
        case state_of_machine is 
        
            when load_new_duty =>
                d1 := conv_Integer(offset);
                d2 := conv_Integer(duty);
                d12 := d1 + d2;
                count := 0;
                toggle := not toggle;
                if (d1 = 0 and d2 = 0) then
                    if (toggle = '0') then
                        pwm_bap <= '0';
                        pwm_ban <= '1';
                        
                    else
                        pwm_bap <= '0';
                        pwm_ban <= '1';
                    end if;
                    state_of_machine <= pwm_low;
                elsif (d1 = 0 and d2 > 0) then
                    pwm_bap <= '1';
                    pwm_ban <= '0';
                    state_of_machine <= pwm_high;
                elsif (d1 > 0) then
                    pwm_bap <= '0';
                    pwm_ban <= '1';
                    state_of_machine <= pwm_low;
                end if;
            
            when pwm_low =>
                count := count + 1;
                if (count < boundary and count < d1) then
                    pwm_bap <= '0';
                    pwm_ban <= '1';
                    state_of_machine <= pwm_low;
                elsif (count >= d1 and d2 = 0 and count < boundary) then
                    if (toggle = '0') then
                        pwm_bap <= '0';
                        pwm_ban <= '1';
                    else
                        pwm_bap <= '0';
                        pwm_ban <= '1';
                    end if;
                    state_of_machine <= pwm_low;
                elsif (count = d1 and d2 > 0 and count < boundary) then
                    pwm_bap <= '1';
                    pwm_ban <= '0';
                    state_of_machine <= pwm_high;
                elsif (count = boundary) then
                    if (toggle = '0') then
                        pwm_bap <= '0';
                        pwm_ban <= '1';
                    else
                        pwm_bap <= '0';
                        pwm_ban <= '1';
                    end if;
                    state_of_machine <= load_new_duty;
                elsif (count > d12 and count < boundary) then
                    if (toggle = '0') then
                        pwm_bap <= '0';
                        pwm_ban <= '1';
                    else
                        pwm_bap <= '0';
                        pwm_ban <= '1';
                    end if;
                    state_of_machine <= pwm_low;
                elsif (d1 = 0 and d2 = 0 and count < boundary) then
                    if (toggle = '0') then
                        pwm_bap <= '0';
                        pwm_ban <= '1';
                    else
                        pwm_bap <= '0';
                        pwm_ban <= '1';
                    end if;
                    state_of_machine <= pwm_low;
                end if;
            
            when pwm_high =>
                count := count + 1;
                if (count < boundary and count < d12) then
                    pwm_bap <= '1';
                    pwm_ban <= '0';
                    state_of_machine <= pwm_high;
                elsif (count = d12) then
                    if (toggle = '0') then
                        pwm_bap <= '0';
                        pwm_ban <= '1';
                    else
                        pwm_bap <= '0';
                        pwm_ban <= '1';
                    end if;
                    state_of_machine <= pwm_low;
                elsif (count = boundary) then
                    if (toggle = '0') then
                        pwm_bap <= '0';
                        pwm_ban <= '1';
                    else
                        pwm_bap <= '0';
                        pwm_ban <= '1';
                    end if;
                    state_of_machine <= load_new_duty;
                end if;
        
        end case;
        
    end if;
    
    end process;

end Behavioral;
