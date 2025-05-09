.ORIG 	x3500

; R0 holds the X value
; R1 holds the Y value
; R2 is temporary storage
; R3 holds the end result
	
	ADD R3, R3 #1 ; increment R3 by 1
	LD R1, Y ;load the Y value to R1
	BRz FIN ; if R1 is zero brank to FIN
	
EX	AND R2, R2, #0 ; make R2 become 0
	LD R0, X ; load the value of X into R2
	BRp MUL ; if R0 is still positive Branch to MUl
	
	AND R3, R3, #0 ; otherwise make R3 become 0
	BRz FIN ; and branch to terminate the program

MUL     ADD R2, R3, R2 ; increase R2 by R3
	ADD R0, R0, #-1 ; decrement R0 by 1
	BRp	MUL ; begin a cecursion of the MUL label
	
	ADD R3, R2, #0 ; make R3 become equal to R2
	ADD R1, R1, #-1 ; decrement R1 by 1
	BRp EX ; if R1 is positive, branch to EX label

FIN 
	STI R3, ENDRESULT ; store R3 into the endresult label at address x8000
	HALT

X .FILL x3
Y .FILL x3

ENDRESULT .FILL x8000

.END

; Written by
; Tyler
; Raymond
; Harvey