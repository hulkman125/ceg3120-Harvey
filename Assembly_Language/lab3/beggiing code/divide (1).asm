; = = = = = = = = = = = = = = = = =
DIVIDE
; save return address
ST R7, SAVE_R7_DIVIDE

; saving arguments into parameters
ST R0, PARAM_DIVIDEND
ST R1, PARAM_DIVISOR

; int quotient = 0
AND R0, R0, #0
ST R0, VAR_QUOTIENT

START_LOOP_DIVIDE
; while (dividend > divisor)
LD R0, PARAM_DIVIDEND
LD R1, PARAM_DIVISOR
NOT R1, R1
ADD R1, R1, #1
ADD R0, R0, R1
BRnz END_LOOP_DIVIDE

; a -= b
ST R0, PARAM_DIVIDEND

; quotient++
LD R0, VAR_QUOTIENT
ADD R0, R0, #1
ST R0, VAR_QUOTIENT

BRnzp START_LOOP_DIVIDE
END_LOOP_DIVIDE

; load return values
LD R0, VAR_QUOTIENT
LD R1, PARAM_DIVIDEND

; restore return address
LD R7, SAVE_R7_DIVIDE
RET
; - - - - - - - - - - - - - - - - -
; DIVIDE VARS
SAVE_R7_DIVIDE .FILL #0

PARAM_DIVIDEND .FILL #0
PARAM_DIVISOR .FILL #0
VAR_QUOTIENT .FILL #0
; = = = = = = = = = = = = = = = = =