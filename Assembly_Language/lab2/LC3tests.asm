.ORIG	x3000

; R0 contains the input
; R7 will contain the input that will be loaded from R0

numberOfLoops	.FILL #11


	LD R6, numberOfLoops 

ASK		
		
		ADD R6, R6, #-1 ; decrementing the value to be checked
		BRnz FIN ; jump to the FIN label to terminate the program
		And R0, R0, #0 ; clearing R0
		ADD R0, R0, x0A ; making R0 into the new line ascii 
		OUT ; out put the new line
		
		LEA R0, QUE ; load the String into R0
		PUTS ; output the sting
		
		AND R0, R0, #0; clearing R0
		ADD R0, R0, x0A ; making R0 into the new line ascii 
		OUT ; output the new line
		
		LEA R0, QUE ; load the String into R0
		
		GETC ; declaring an input from the user
		OUT ; output the input from the user
		LD R1, decrementing ; decrement R1 by 48
		ADD R0, R0, R1 
		;ADD R0, R0, #1 ; increment R1 by 1
		
		LEA R1, List ;store the input at the end of the array
		
		;ADD R6, R6, #-1
		
		
		ADD R1, R1, R5  ; increase R1 by the amount in R5
		STR R0, R1, #0 ; adding the integer to the array
		ADD R5, R5, #1 ; increment R1 by 1
		BRnzp	ASK ; Restart the process by going back to the Ask label

List	.BLKW #12 ; declaring the array
QUE		 .STRINGZ "please enter integer! " ; making the string to input an integer
decrementing .FILL #-48

FIN 	LD R0, List ; load R0 by the List address

	HALT ; terminate the program

	.END

; Written by
; Tyler
; Raymond
; Harvey