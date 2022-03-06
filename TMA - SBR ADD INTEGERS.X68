        ORG     $1000
START   MOVE    #$2000,A0
        MOVE.B  #$08,D0
        MOVE.L  #0,D1
        BSR     SUM
        LSR     #$3,D1
        MOVE.B  D1, $2050
        STOP    #$2700
        
SUM     ADD.B   (A0)+,D1
        SUB.B   #$1,D0
        BNE     SUM
        RTS
        
        ORG     $2000
        DC.B    $1,$2,$3,$4,$5,$6,$7,$8
        END     START



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~8~
