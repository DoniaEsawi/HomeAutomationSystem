LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY HomeAutomation IS
PORT (
	rst, clk: IN std_logic;
	frontSens, rearSens, WindowSens, fireSens: IN std_logic;
	tempSens: IN std_logic_vector(7 DOWNTO 0);
	frontOut,  -- 1 when the front door sensor turns HIGH, 0 otherwise
	rearOut,   -- 1 when the rear door sensor turns HIGH, 0 otherwise
	windowOut, -- 1 when the window sensor turns HIGH, 0 otherwise
	buzz,	   -- 1 when fire alarm sensor turns HIGH, 0 otherwise
	cooler,    -- 1 when temperature sensor reading is > 70, 0 otherwise
	heater:    -- 1 when temperature sensor reading is < 50, 0 otherwise
	 OUT std_logic	
);
END HomeAutomation;


ARCHITECTURE homeAutomation OF HomeAutomation IS

PROCEDURE IDLE_STATE
	(
	SIGNAL front, rear, window, fire: IN std_logic;
	SIGNAL temp: IN std_logic_vector(7 DOWNTO 0);
	SIGNAL f_out, r_out, w_out, fa_out, c_out, h_out: OUT std_logic;
	SIGNAL nxt_state: OUT std_logic_vector(2 DOWNTO 0))
IS
BEGIN
	f_out <= '0';
	r_out <= '0';
	w_out <= '0';
	fa_out <= '0';
	c_out <= '0';
	h_out <= '0';
IF (front = '1' )THEN
	
	nxt_state <= "001";
ELSIF rear = '1' THEN
		
		nxt_state <= "010";
	ELSIF fire = '1' THEN
			
	 		nxt_state <= "011";
		ELSIF window = '1' THEN
				
				nxt_state <= "100";
			ELSIF temp < "00110010" THEN
					
					nxt_state <= "101";
				ELSIF temp > "01000110" THEN
						
						nxt_state <= "111";
					ELSE
						nxt_state <= "000";
					
END IF;

END IDLE_STATE;


----------------------------------------------------------------
PROCEDURE FRONT_STATE
(
	SIGNAL front,rear, window, fire: IN std_logic;
	SIGNAL temp: IN std_logic_vector(7 DOWNTO 0);
	SIGNAL f_out,r_out, w_out, fa_out, c_out, h_out: OUT std_logic;
	SIGNAL nxt_state: OUT std_logic_vector(2 DOWNTO 0))
IS
BEGIN
	f_out <= '1';
	r_out <= '0';
	w_out <= '0';
	fa_out <= '0';
	c_out <= '0';
	h_out <= '0';
	IF (rear = '1' )THEN
		nxt_state <= "010";
	ELSIF fire = '1' THEN
		nxt_state <= "011";
	ELSIF window = '1' THEN
		nxt_state <= "100";
	ELSIF temp < "00110010" THEN
		nxt_state <= "101";
	ELSIF temp > "01000110" THEN
		nxt_state <= "111";
	ELSIF  front= '1' THEN
		nxt_state <= "001";	
	ELSE 
		nxt_state <= "000";
	END IF;
END FRONT_STATE;
---------------------------------------------

PROCEDURE REAR_STATE
	(
	SIGNAL front, rear, window, fire: IN std_logic;
	SIGNAL temp: IN std_logic_vector(7 DOWNTO 0);
	SIGNAL f_out, r_out, w_out, fa_out, c_out, h_out: OUT std_logic;
	SIGNAL nxt_state: OUT std_logic_vector(2 DOWNTO 0))
IS
BEGIN
	f_out <= '0';
	r_out <= '1';
	w_out <= '0';
	fa_out <= '0';
	c_out <= '0';
	h_out <= '0';
IF (fire = '1' )THEN
	nxt_state <= "011";
ELSIF (window = '1') THEN
		nxt_state <= "100";
	ELSIF temp < "00110010" THEN
			nxt_state <= "101";
		ELSIF temp > "01000110" THEN
				nxt_state <= "111";
			ELSIF front = '1' THEN 
					nxt_state <= "001";
				ELSIF rear = '1' THEN
						nxt_state <= "010";
					ELSE
						r_out <= '0';
						nxt_state <= "000";

END IF;

END REAR_STATE;

-------------------------------------------------


--------------------------Fire Alarm--------------------------------------------------------------
PROCEDURE FireAlarm_STATE
(
	SIGNAL front, rear, window, fire: IN std_logic;
	SIGNAL temp: IN std_logic_vector(7 DOWNTO 0);
	SIGNAL f_out, r_out, w_out, fa_out, c_out, h_out: OUT std_logic;
	SIGNAL nxt_state: OUT std_logic_vector(2 DOWNTO 0)
)
IS
BEGIN
	f_out <= '0';
	r_out <= '0';
	w_out <= '0';
	fa_out <= '1';
	c_out <= '0';
	h_out <= '0';
IF window='1' THEN 
     nxt_state <= "100";

	ELSIF  temp < "00110010" THEN
		nxt_state <= "101";

			ELSIF   temp > "01000110" THEN
			  	nxt_state <= "110";
				
				ELSIF front = '1' THEN
					nxt_state <= "001";	

					ELSIF rear = '1' THEN
						nxt_state <= "010";	

						ELSIF  fire= '1' THEN
							nxt_state <= "011";	
						ELSE 
							nxt_state <= "000";

END IF;

End FireAlarm_STATE;

-------------------------------------------------------------------------------------------------------
PROCEDURE WINDOW_STATE
(
	SIGNAL front, rear, window, fire: IN std_logic;
	SIGNAL temp: IN std_logic_vector(7 DOWNTO 0);
	SIGNAL f_out, r_out, w_out, fa_out, c_out, h_out: OUT std_logic;
	SIGNAL nxt_state: OUT std_logic_vector(2 DOWNTO 0))
IS
BEGIN
	f_out <= '0';
	r_out <= '0';
	w_out <= '1';
	fa_out <= '0';
	c_out <= '0';
	h_out <= '0';
	IF temp < "00110010" THEN
		nxt_state <= "101";
	ELSIF temp > "01000110" THEN
			nxt_state <= "110";
		
		ELSIF front = '1' THEN
					nxt_state <= "001";	

			ELSIF rear = '1' THEN
						nxt_state <= "010";	

				ELSIF fire= '1' THEN
							nxt_state <= "011";	
		
					ELSIF window = '1' THEN
							nxt_state <= "100";
						ELSE
							nxt_state <= "000";
						
	END IF;

END WINDOW_STATE;
---------------------------------------------
PROCEDURE TEMP_STATE_HEATER
(
	SIGNAL front, rear, window, fire: IN std_logic;
	SIGNAL temp: IN std_logic_vector(7 DOWNTO 0);
	SIGNAL f_out, r_out, w_out, fa_out, c_out, h_out: OUT std_logic;
	SIGNAL nxt_state: OUT std_logic_vector(2 DOWNTO 0))
IS
BEGIN
	f_out <= '0';
	r_out <= '0';
	w_out <= '0';
	fa_out <= '0';
	c_out <= '0';
	h_out <= '1';
	IF temp > "01000110" THEN
			nxt_state <="110";
	ELSIF front = '1' THEN
						nxt_state <= "001";	
		ElSIF rear = '1' THEN
						nxt_state <= "010";	

			ELSIF fire= '1' THEN
							nxt_state <= "011";	
		
				ELSIF window = '1' THEN
							nxt_state <= "100";
					ELSIF temp < "00110010" THEN
							nxt_state <= "101";
						ELSE
							nxt_state <= "000";
						
	END IF;

END TEMP_STATE_HEATER;
---------------------------------------------
PROCEDURE TEMP_STATE_COOLER
(
	SIGNAL front, rear, window, fire: IN std_logic;
	SIGNAL temp: IN std_logic_vector(7 DOWNTO 0);
	SIGNAL f_out, r_out, w_out, fa_out, c_out, h_out: OUT std_logic;
	SIGNAL nxt_state: OUT std_logic_vector(2 DOWNTO 0))
IS
BEGIN
	f_out <= '0';
	r_out <= '0';
	w_out <= '0';
	fa_out <= '0';
	c_out <= '1';
	h_out <= '0';
		IF front = '1' THEN
					nxt_state <= "001";	
		ElsIF rear = '1' THEN
						nxt_state <= "010";	

			ELSIF fire= '1' THEN
							nxt_state <= "011";	
		
				ELSIF window = '1' THEN
							nxt_state <= "100";
					ELSIF temp < "00110010" THEN
							nxt_state <= "101";
						ELSIF temp > "01000110" THEN
								nxt_state <="110";
							ELSE
								nxt_state <= "000";
						
			
	END IF;

END TEMP_STATE_COOLER;
-- signals definiton

SIGNAL state, next_state: std_logic_vector(2 DOWNTO 0);
SIGNAL front_out, rear_out, window_out, buzz_out, cooler_out, heater_out: std_logic;
BEGIN
PROCESS (clk, rst)
BEGIN
	IF(rising_edge(clk)) THEN
		IF rst = '1' THEN
			state <= "000";
		ELSE
			state <= next_state;
		END IF;
	END IF;
END PROCESS;

PROCESS (rst, state, frontSens, rearSens, WindowSens, fireSens, tempSens)
BEGIN
	frontOut <= '0';
	rearOut <= '0';
	windowOut <= '0';
	buzz <= '0';
	cooler <= '0';
	heater <= '0';
IF rst = '0' THEN
	IF state = "000" THEN
		IDLE_STATE(frontSens, rearSens,WindowSens, fireSens, tempSens,
			frontOut, rearOut, windowOut, buzz, cooler, heater, next_state);
	ELSIF state = "001" THEN
		FRONT_STATE(frontSens,rearSens,WindowSens, fireSens, tempSens,
		frontOut,rearOut, windowOut, buzz, cooler, heater, next_state);
	ELSIF state = "010" THEN
		REAR_STATE(frontSens, rearSens,WindowSens, fireSens, tempSens,
		frontOut, rearOut, windowOut, buzz, cooler, heater, next_state);
    	ELSIF  state = "011" THEN --FirAlarm State
		FireAlarm_STATE(frontSens, rearSens,WindowSens, fireSens, tempSens,
		frontOut, rearOut, windowOut, buzz, cooler, heater, next_state);       
	ELSIF state = "100" THEN --- window state
		WINDOW_STATE(frontSens, rearSens,WindowSens, fireSens, tempSens,
		frontOut, rearOut, windowOut, buzz, cooler, heater, next_state);
	ELSIF state = "101" THEN --- heater state
		TEMP_STATE_HEATER(frontSens, rearSens,WindowSens, fireSens, tempSens,
		frontOut, rearOut, windowOut, buzz, cooler, heater, next_state);
	ELSIF state = "110" THEN --- cooler state
		TEMP_STATE_COOLER(frontSens, rearSens,WindowSens, fireSens, tempSens,
		frontOut, rearOut, windowOut, buzz, cooler, heater, next_state);
	ELSE
		next_state <= "000";
	END IF;
ELSE
	next_state <= "000";


END IF;
END PROCESS;
END homeAutomation;