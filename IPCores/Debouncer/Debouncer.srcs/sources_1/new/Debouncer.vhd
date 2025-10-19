library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-------------------------------------------------
entity debouncer is
    generic (
        DEBOUNCE_TIME_MS : integer := 20;           -- Tiempo de debounce en ms
        CLK_FREQ_HZ : integer := 125_000_000 -- Frecuencia del clk de la FPGA
    );
    port(
        clk              : in  std_logic;
        button           : in  std_logic;
        debounced_pulse  : out std_logic  -- Pulso ?nico por pulsaci?n
    );
end debouncer;

-------------------------------------------------
architecture Behavioral of debouncer is

    -- Contador para verificar estabilidad
    constant COUNTER_MAX : integer := (CLK_FREQ_HZ / 1000) * DEBOUNCE_TIME_MS;
    signal counter       : integer range 0 to COUNTER_MAX := 0;

    -- Sincronizaci?n para evitar metastabilidad
    signal button_sync   : std_logic_vector(1 downto 0) := (others => '0');

    -- Se?ales internas
    signal button_stable : std_logic := '0';
    signal button_last   : std_logic := '0';
    signal pulse_reg     : std_logic := '0';

begin

    -----------------------------------------------------------------
    -- Sincronizar el bot?n con el reloj principal
    -----------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            button_sync(0) <= button;
            button_sync(1) <= button_sync(0);
        end if;
    end process;

    -----------------------------------------------------------------
    -- Filtro de rebote
    -----------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            if button_sync(1) /= button_stable then
                counter <= counter + 1;
                if counter = COUNTER_MAX then
                    button_stable <= button_sync(1);
                    counter <= 0;
                end if;
            else
                counter <= 0;
            end if;
        end if;
    end process;

    -----------------------------------------------------------------
    -- Pulso ?nico en flanco de subida limpio
    -----------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            pulse_reg <= '0';  -- valor por defecto
            if (button_stable = '1' and button_last = '0') then
                pulse_reg <= '1';
            end if;
            button_last <= button_stable;
        end if;
    end process;

    debounced_pulse <= pulse_reg;

end Behavioral;