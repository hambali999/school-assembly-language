        ORG     $1000
START   MOVE    #$2000,A0
        MOVE.B  #$08,D0
        MOVE.L  #$0,D1
LOOP	ADD.B   (A0)+,D1
        SUB.B   #$01,D0
        BNE	LOOP 
        LSR     #$03,D1       ;LOGICAL SHIFT RIGHT BY 3 PLACES
        MOVE.B  D1, $2050
	STOP	 #$2700
	
	END 	START


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~8~
