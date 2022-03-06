   	ORG    $2000
   	
START:  MOVE.L #$5000,A0                  ; first instruction of program
        MOVE.W #$ABCD,(A0)+
        MOVE.W (A0),D0
        MOVE.L $5000,D1
        STOP   #$2700


* Put variables and constants here
	ORG    $5000

DATA    DC.B $66, $77, $88, $99

   	END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~8~
