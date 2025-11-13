library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
------------------------------------------------------------
entity BuzzerBooster_Driver_v1_0_S00_AXI is
	generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32; -- Data width
		C_S_AXI_ADDR_WIDTH	: integer	:= 4 -- Addr Width
	);
	port (
	    -- Puertos creados por nosotros:
	    ------------------------------------------------------------------------
        PWM                 : out std_logic; -- Senal de estimulo del buzzer 
        MUTE                : in  std_logic; -- Enable del sistema
        ------------------------------------------------------------------------
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
	);
end BuzzerBooster_Driver_v1_0_S00_AXI;
------------------------------------------------------------
architecture arch_imp of BuzzerBooster_Driver_v1_0_S00_AXI is
	signal axi_awaddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_awready	: std_logic;
	signal axi_wready	: std_logic;
	signal axi_bresp	: std_logic_vector(1 downto 0);
	signal axi_bvalid	: std_logic;
	signal axi_araddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_arready	: std_logic;
	signal axi_rdata	: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal axi_rresp	: std_logic_vector(1 downto 0);
	signal axi_rvalid	: std_logic;
	constant ADDR_LSB  : integer := (C_S_AXI_DATA_WIDTH/32)+ 1;
	constant OPT_MEM_ADDR_BITS : integer := 1;
	---------------------------------------------------
	---- Registros utilizados para el control del audio:
	---------------------------------------------------
	signal slv_reg0	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); -- Control del volumen (duty cycle PWM)
	signal slv_reg1	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); -- Control de frecuencia
	signal slv_reg2	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); -- Duracion de la nota escogida
	signal slv_reg3	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); -- Estado del sistema
	--------------------------------------------------------------------------------------------------------
	signal slv_reg_rden	: std_logic;
	signal slv_reg_wren	: std_logic;
	signal reg_data_out	: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal byte_index	: integer;
	signal aw_en	    : std_logic;
	-----------------------------------------------
	---- Senales para la logica interna del bloque:
	-----------------------------------------------
    signal note_counter     : integer := 0; -- Contador de duracion de la nota
    signal pwm_counter      : integer := 0; -- Contador (senal triangular) para generar la PWM
    signal duration         : integer; -- Duracion de la nota/mute actual
    signal duration_counter : integer := 0; -- Contador para regular la duracion del contador  
    signal volume           : integer := 0; -- Valor del volumen (controlado por el potenciometro 1)
    signal frequency        : integer; -- Valor de la frecuencia de la nota que se desea tocar
    signal duty_cycle       : integer := 0; -- Mediante el duty cycle regulamos el volumen
    signal pwm_cycles        : integer := 1; -- Ciclos de clk que se deben realizar para generar frecuencia pedida
    signal buzzer_pwm       : std_logic; -- Salida PWM
    signal note_start       : std_logic; -- Inicia nota
    signal note_busy        : std_logic; -- Nota siendo tocada
    signal note_end         : std_logic; -- Termina nota
    signal note_restart     : std_logic; -- Se reinicia nota
    signal mute_buffer      : std_logic; -- buffer de la senal de mute para detectar cambios
    signal volume_buffer    : std_logic_vector (31 downto 0); -- buffer del registro de volumen para detectar cambios
    constant clk_freq       : integer  := 100_000_000;
-----------------------------------------------------------------------------------------------------------
begin
	S_AXI_AWREADY	<= axi_awready;
	S_AXI_WREADY	<= axi_wready;
	S_AXI_BRESP	    <= axi_bresp;
	S_AXI_BVALID	<= axi_bvalid;
	S_AXI_ARREADY	<= axi_arready;
	S_AXI_RDATA	    <= axi_rdata;
	S_AXI_RRESP	    <= axi_rresp;
	S_AXI_RVALID	<= axi_rvalid;
	
	----Conexion de PWM a la salida---
	PWM             <= buzzer_pwm;
	----------------------------------

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_awready <= '0';
	      aw_en <= '1';
	    else
	      if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' and aw_en = '1') then
	           axi_awready <= '1';
	           aw_en <= '0';
	        elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then
	           aw_en <= '1';
	           axi_awready <= '0';
	      else
	        axi_awready <= '0';
	      end if;
	    end if;
	  end if;
	end process;

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_awaddr <= (others => '0');
	    else
	      if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' and aw_en = '1') then
	        axi_awaddr <= S_AXI_AWADDR;
	      end if;
	    end if;
	  end if;                   
	end process; 

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_wready <= '0';
	    else
	      if (axi_wready = '0' and S_AXI_WVALID = '1' and S_AXI_AWVALID = '1' and aw_en = '1') then          
	          axi_wready <= '1';
	      else
	        axi_wready <= '0';
	      end if;
	    end if;
	  end if;
	end process; 

	slv_reg_wren <= axi_wready and S_AXI_WVALID and axi_awready and S_AXI_AWVALID ;

	process (S_AXI_ACLK)
	variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0); 
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      slv_reg0 <= (others => '0');
	      slv_reg1 <= (others => '0');
	      slv_reg2 <= (others => '0');
	    else
	      loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
	      if (slv_reg_wren = '1') then
	        case loc_addr is
	          when b"00" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                slv_reg0(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"01" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                slv_reg1(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"10" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                slv_reg2(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"11" =>
	            null;
	          when others =>
	            slv_reg0 <= slv_reg0;
	            slv_reg1 <= slv_reg1;
	            slv_reg2 <= slv_reg2;
	            slv_reg3 <= slv_reg3;
	        end case;
	      end if;
	    end if;
	  end if;                   
	end process; 

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_bvalid  <= '0';
	      axi_bresp   <= "00"; 
	    else
	      if (axi_awready = '1' and S_AXI_AWVALID = '1' and axi_wready = '1' and S_AXI_WVALID = '1' and axi_bvalid = '0'  ) then
	        axi_bvalid <= '1';
	        axi_bresp  <= "00"; 
	      elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then 
	        axi_bvalid <= '0';                                 
	      end if;
	    end if;
	  end if;                   
	end process; 

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_arready <= '0';
	      axi_araddr  <= (others => '1');
	    else
	      if (axi_arready = '0' and S_AXI_ARVALID = '1') then
	        axi_arready <= '1';
	        axi_araddr  <= S_AXI_ARADDR;           
	      else
	        axi_arready <= '0';
	      end if;
	    end if;
	  end if;                   
	end process; 

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then
	    if S_AXI_ARESETN = '0' then
	      axi_rvalid <= '0';
	      axi_rresp  <= "00";
	    else
	      if (axi_arready = '1' and S_AXI_ARVALID = '1' and axi_rvalid = '0') then
	        axi_rvalid <= '1';
	        axi_rresp  <= "00"; 
	      elsif (axi_rvalid = '1' and S_AXI_RREADY = '1') then
	        axi_rvalid <= '0';
	      end if;            
	    end if;
	  end if;
	end process;

	slv_reg_rden <= axi_arready and S_AXI_ARVALID and (not axi_rvalid) ;

	process (slv_reg0, slv_reg1, slv_reg2, slv_reg3, axi_araddr, S_AXI_ARESETN, slv_reg_rden)
	variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
	begin
	    loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
	    case loc_addr is
	      when b"00" =>
	        reg_data_out <= slv_reg0;
	      when b"01" =>
	        reg_data_out <= slv_reg1;
	      when b"10" =>
	        reg_data_out <= slv_reg2;
	      when b"11" =>
	        reg_data_out <= slv_reg3;
	      when others =>
	        reg_data_out  <= (others => '0');
	    end case;
	end process; 

	process( S_AXI_ACLK ) is
	begin
	  if (rising_edge (S_AXI_ACLK)) then
	    if ( S_AXI_ARESETN = '0' ) then
	      axi_rdata  <= (others => '0');
	    else
	      if (slv_reg_rden = '1') then
	          axi_rdata <= reg_data_out;  
	      end if;   
	    end if;
	  end if;
	end process;

	---------------------------------------------------------
	-------------- LOGICA CREADA POR NOSOTROS ---------------
	---------------------------------------------------------
	process( S_AXI_ACLK ) is
	begin
	  if (rising_edge (S_AXI_ACLK)) then
	  
            -- Caso de reset
            if S_AXI_ARESETN = '0' then
                note_start       <= '0';
                note_busy        <= '0';
                note_end         <= '0';
                note_restart     <= '0';
                buzzer_pwm       <= '0';
                mute_buffer      <= '0';
                pwm_counter      <=  0;
                duty_cycle       <=  0;
                volume           <=  0;
                duration_counter <=  0;
                volume_buffer    <= (others => '0');
                slv_reg3         <= (others => '0'); -- Reiniciamos el estado del sistema
    
            else
                -- Lectura de senales de audio:
                volume      <= to_integer(unsigned(slv_reg0(11 downto 3)));
                frequency   <= to_integer(unsigned(slv_reg1));
                duration    <= to_integer(unsigned(slv_reg2));
                mute_buffer <= mute;
    
                -- Calculo del volumen
                duty_cycle <= (volume * pwm_cycles) / 512; 
    
                -- Deteccion de cambios en cada flanco de subida:
                note_start   <= slv_reg0(0) and not volume_buffer(0);
                note_end     <= slv_reg0(1) and not volume_buffer(1);
                note_restart <= slv_reg0(2) and not volume_buffer(2);
    
                -- Actualizacion de la senal de control:
                volume_buffer <= slv_reg0;
    
                -- Creacion de la PWM:
    
                -- Reinicio de la nota a tocar:
                if note_restart = '1' then
                    pwm_counter      <= 0;
                    duration_counter <= 0;
                    buzzer_pwm       <= '0';
                    note_busy        <= '0';
    
                -- Caso de silencio del buzzer:
                elsif mute_buffer = '1' then
                    buzzer_pwm <= '0';
                    note_busy  <= '0';
    
                -- Caso de inicio de nota:
                elsif note_start = '1' and note_busy = '0' then
                    if frequency /= 0 then
                        pwm_cycles <= clk_freq / frequency;
                    else
                        pwm_cycles <= 1;
                    end if;
    
                    pwm_counter      <= 0;
                    duration_counter <= 0;
                    buzzer_pwm       <= '1';
                    note_busy        <= '1';
    
                -- Caso de termino de nota tocada:
                elsif note_end = '1' then
                    buzzer_pwm <= '0';
                    note_busy  <= '0';
    
                -- Caso de nota siendo tocada:
                elsif note_busy = '1' then
                    if duration_counter < duration then
                        duration_counter <= duration_counter + 1;
    
                        if pwm_counter < duty_cycle then
                            buzzer_pwm <= '1';
                        else
                            buzzer_pwm <= '0';
                        end if;
    
                        if pwm_counter < pwm_cycles then
                            pwm_counter <= pwm_counter + 1;
                        else
                            pwm_counter <= 0;
                        end if;
    
                    -- Se alcanzo la duracion deseada de la nota
                    else
                        buzzer_pwm <= '0';
                        note_busy  <= '0';
                    end if;
                
                -- Cualquier otro caso: Apagado
                else 
                    buzzer_pwm  <= '0';
                end if;
                
                -- Actualizacion del registro del estado de la nota actual
                slv_reg3(0)           <= note_busy;
                slv_reg3(31 downto 1) <= (others => '0');
    
            end if; -- Fin del reset
        end if; -- Fin del rising_edge
    end process;

end arch_imp;
