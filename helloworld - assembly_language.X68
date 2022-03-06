*-------------------------------------------------------
* Program     :
* Description :
*-------------------------------------------------------
START	ORG	$1000
*-------Code for output------
	*MOVE.L	#$20,D0	;MOVE $20 INTO D0
	*MOVE.B	#$21,D1	;MOVE $21 INTO D1
	*ADD.B	D1,D0	;ADD D1+D0 -> D0
	*STOP 	#$2700	;STOP PROGRAM
	LEA	MESSAGE,A1	 ;Loads MESSAGE into address register A1
	MOVE.B	#14,D0 		;Moves the number 14 into D0
	TRAP 	#15		;Display Message
	
	MOVE.B	#9,D0		;Moves the number 9 into D0
	TRAP 	#15		;Halt Simulator

MESSAGE DC.B	'HELLO WORLD',0 ;Place ASCII String in memory at MESSAGE
	
	END 	START
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~8~
