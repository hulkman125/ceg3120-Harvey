.ORIG x3520

	LD R2, A ; load the R2 register with the above number
	BRnz FIN ; if R2 is negative or zero branch to FIN
	AND R3, R3, #0 ; make R3 into 0
	
LOOP	ADD R3, R3, #5 ; increase R3 by 5
		ADD R2, R2, #-1 ;decrement R2 by 1
		BRp LOOP ; if R2 is still positive branch to LOOP
		
	
		
FIN STI R3, ENDRESULT ; Store R3 into the variable of ENDRESULT at address x8001
	HALT
	

ENDRESULT .FILL x8001
A	.FILL X5 ; fill the address locatin of x0005

.END
; program 
; written by
; Tyler
; Raymond
; Harvey
