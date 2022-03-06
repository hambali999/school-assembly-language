        ORG     $000100
        
START   MOVE.L  #$1001,A0	; first instruction of program
	MOVE.B	#$12,D0
	ADD.B	(A0)+,D0
	MOVE.L	$1000,D1
	SUB.B 	#$1,D1
	MOVE.L 	D1,$1000
        STOP	#$2700
        
        * Put variables and constants here
	ORG    $001000

DATA    DC.B $11, $22, $33, $44
        
        END	START



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~8~
