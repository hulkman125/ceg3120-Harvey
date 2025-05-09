.ORIG x3800

ADD R0, R0, #3 ; load the variable into R0
R0 .FILL x8003
ADD R1, R1, #3 ; load the variable into R1
R1 .FILL x8004
ADD R3, R3, #0

NOT R0, R0 ; inverse the variable in R0
ADD R0, R0, #1
ADD R3, R0, R1 ; add R0 and R1 together into R3
BRz SAME ; if they equal 0 branch to Same label

ADD R3, R0, R1 ; add R0 and R1 together into R3
BRnp DIF ; if they are not equal branch to DIF label

SAME  ADD R3, R3, #5 ; increase R3 by 5
BRnzp FIN


DIF	ADD R3, R3, #-5 ; Decrease R3 by 5
BRnzp FIN



FIN  STI R3, ENDRESULT ; store R3 into the variable of ENDRESULY at adress x8002
	HALT

ENDRESULT .FILL X8002


.END

; Written by
; Tyler
; Raymond
; Harvey