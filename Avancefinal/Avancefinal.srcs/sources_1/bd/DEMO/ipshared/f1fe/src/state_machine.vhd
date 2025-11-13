library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-----------------------------------------------------
entity state_machine is
    Port (
        clk      : in  STD_LOGIC;
        btn_0    : in  STD_LOGIC;
        finished : in  STD_LOGIC;
        state    : out STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
        mute     : out STD_LOGIC
    );
end state_machine;
-------------------------------------------------------
architecture Behavioral of state_machine is

    type state_type is (title_screen, menu, game, podium);
    signal current_state, next_state : state_type := title_screen;
    signal mute_buffer: std_logic := '0';

begin
    ------------------------------------------
    -- Parte secuencial: Determinar next state
    ------------------------------------------
    state_register: process(clk)
    begin
        if rising_edge(clk) then
        
            current_state <= next_state;

        end if;
    end process state_register;

    ------------------------------------------
    -- Parte combinacional: Next state logic
    ------------------------------------------
    next_state_logic: process(btn_0, finished)
    begin
        
        next_state <= current_state;
        
        case current_state is
        
        -- Estado 0: title_screen
            when title_screen =>
                state <= "00";
                mute_buffer <= '1';  
                if btn_0 = '1' then
                    next_state <= menu;
                end if;
                
        -- Estado 2: menu        
            when menu =>
                state <= "01";  
                if btn_0 = '1' then
                    next_state <= game;
                end if;
 
        -- Estado 3: game                
            when game =>
                state <= "10";
                mute_buffer <= '0';   
                if (finished = '1')or(btn_0 = '1') then
                    next_state <= podium;
                end if;

        -- Estado 3: podium                
            when podium =>
                state <= "11";
                mute_buffer <= '1'; 
                if (btn_0 = '1') then
                    next_state <= menu;
                end if; 
                         
        end case;
    end process next_state_logic;
    mute <= mute_buffer; 
end Behavioral;