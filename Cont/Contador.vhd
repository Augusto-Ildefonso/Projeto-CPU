-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"
-- CREATED		"Thu Sep 19 15:30:30 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Contador IS 
	PORT
	(
		CLK :  IN  STD_LOGIC;
		Entrada :  IN  STD_LOGIC;
		CLEAR :  IN  STD_LOGIC;
		Q :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END Contador;

ARCHITECTURE bdf_type OF Contador IS 

SIGNAL	CLR :  STD_LOGIC;
SIGNAL	Partial1 :  STD_LOGIC;
SIGNAL	Partial2 :  STD_LOGIC;
SIGNAL	Partial3 :  STD_LOGIC;
SIGNAL	Partial4 :  STD_LOGIC;
SIGNAL	Partial5 :  STD_LOGIC;
SIGNAL	Partial6 :  STD_LOGIC;
SIGNAL	Q_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 



PROCESS(CLK,CLR)
VARIABLE Q_ALTERA_SYNTHESIZED_synthesized_var : STD_LOGIC_VECTOR(0 TO 0);
BEGIN
IF (CLR = '0') THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(0) := '0';
ELSIF (RISING_EDGE(CLK)) THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(0) := Q_ALTERA_SYNTHESIZED_synthesized_var(0) XOR Entrada;
END IF;
	Q_ALTERA_SYNTHESIZED(0) <= Q_ALTERA_SYNTHESIZED_synthesized_var(0);
END PROCESS;


PROCESS(CLK,CLR)
VARIABLE Q_ALTERA_SYNTHESIZED_synthesized_var : STD_LOGIC_VECTOR(1 TO 1);
BEGIN
IF (CLR = '0') THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(1) := '0';
ELSIF (RISING_EDGE(CLK)) THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(1) := Q_ALTERA_SYNTHESIZED_synthesized_var(1) XOR Q_ALTERA_SYNTHESIZED(0);
END IF;
	Q_ALTERA_SYNTHESIZED(1) <= Q_ALTERA_SYNTHESIZED_synthesized_var(1);
END PROCESS;


Partial3 <= Partial2 AND Q_ALTERA_SYNTHESIZED(3);


Partial4 <= Partial3 AND Q_ALTERA_SYNTHESIZED(4);


Partial5 <= Partial4 AND Q_ALTERA_SYNTHESIZED(5);


Partial6 <= Partial5 AND Q_ALTERA_SYNTHESIZED(6);


CLR <= NOT(CLEAR);



PROCESS(CLK,CLR)
VARIABLE Q_ALTERA_SYNTHESIZED_synthesized_var : STD_LOGIC_VECTOR(2 TO 2);
BEGIN
IF (CLR = '0') THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(2) := '0';
ELSIF (RISING_EDGE(CLK)) THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(2) := Q_ALTERA_SYNTHESIZED_synthesized_var(2) XOR Partial1;
END IF;
	Q_ALTERA_SYNTHESIZED(2) <= Q_ALTERA_SYNTHESIZED_synthesized_var(2);
END PROCESS;


PROCESS(CLK,CLR)
VARIABLE Q_ALTERA_SYNTHESIZED_synthesized_var : STD_LOGIC_VECTOR(3 TO 3);
BEGIN
IF (CLR = '0') THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(3) := '0';
ELSIF (RISING_EDGE(CLK)) THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(3) := Q_ALTERA_SYNTHESIZED_synthesized_var(3) XOR Partial2;
END IF;
	Q_ALTERA_SYNTHESIZED(3) <= Q_ALTERA_SYNTHESIZED_synthesized_var(3);
END PROCESS;


PROCESS(CLK,CLR)
VARIABLE Q_ALTERA_SYNTHESIZED_synthesized_var : STD_LOGIC_VECTOR(4 TO 4);
BEGIN
IF (CLR = '0') THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(4) := '0';
ELSIF (RISING_EDGE(CLK)) THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(4) := Q_ALTERA_SYNTHESIZED_synthesized_var(4) XOR Partial3;
END IF;
	Q_ALTERA_SYNTHESIZED(4) <= Q_ALTERA_SYNTHESIZED_synthesized_var(4);
END PROCESS;


PROCESS(CLK,CLR)
VARIABLE Q_ALTERA_SYNTHESIZED_synthesized_var : STD_LOGIC_VECTOR(5 TO 5);
BEGIN
IF (CLR = '0') THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(5) := '0';
ELSIF (RISING_EDGE(CLK)) THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(5) := Q_ALTERA_SYNTHESIZED_synthesized_var(5) XOR Partial4;
END IF;
	Q_ALTERA_SYNTHESIZED(5) <= Q_ALTERA_SYNTHESIZED_synthesized_var(5);
END PROCESS;


PROCESS(CLK,CLR)
VARIABLE Q_ALTERA_SYNTHESIZED_synthesized_var : STD_LOGIC_VECTOR(6 TO 6);
BEGIN
IF (CLR = '0') THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(6) := '0';
ELSIF (RISING_EDGE(CLK)) THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(6) := Q_ALTERA_SYNTHESIZED_synthesized_var(6) XOR Partial5;
END IF;
	Q_ALTERA_SYNTHESIZED(6) <= Q_ALTERA_SYNTHESIZED_synthesized_var(6);
END PROCESS;


PROCESS(CLK,CLR)
VARIABLE Q_ALTERA_SYNTHESIZED_synthesized_var : STD_LOGIC_VECTOR(7 TO 7);
BEGIN
IF (CLR = '0') THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(7) := '0';
ELSIF (RISING_EDGE(CLK)) THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(7) := Q_ALTERA_SYNTHESIZED_synthesized_var(7) XOR Partial6;
END IF;
	Q_ALTERA_SYNTHESIZED(7) <= Q_ALTERA_SYNTHESIZED_synthesized_var(7);
END PROCESS;


Partial1 <= Q_ALTERA_SYNTHESIZED(0) AND Q_ALTERA_SYNTHESIZED(1);


Partial2 <= Partial1 AND Q_ALTERA_SYNTHESIZED(2);

Q <= Q_ALTERA_SYNTHESIZED;

END bdf_type;