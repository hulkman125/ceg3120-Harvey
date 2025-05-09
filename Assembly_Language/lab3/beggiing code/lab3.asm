.ORIG x3000


JSR GETNUM
ST R0, NUM_1

JSR GETOP
ST R0, OPERATION

JSR GETNUM
ST R0, NUM_2


JSR CALC
ST R0, RESULT



LD R0, RESULT
JSR DISPLAY

















ADD R0, R1, #0





HALT

RESULT .FILL #0

; = = = = = = = = = = = = = = = = =
DISPLAY

ST R7, SAVE_R7_DISPLAY

ST R0, NUM_DISPLAY

ADD R0, R0, #0
BRzp SKIP_FLIP
NOT R0, R0
ADD R0, R0, #1
ST R0, NUM_DISPLAY
LD R0, HYPHEN
OUT
SKIP_FLIP

LD R0, NUM_DISPLAY
LD R1, THOUSAND
JSR DIVIDE

ST R1, NUM_DISPLAY

LD R1, ASCII_OFFSET
ADD R0, R0, R1
OUT

LD R0, NUM_DISPLAY
LD R1, HUNDRED
JSR DIVIDE

ST R1, NUM_DISPLAY

LD R1, ASCII_OFFSET
ADD R0, R0, R1
OUT

LD R0, NUM_DISPLAY
LD R1, TEN
JSR DIVIDE

ST R1, NUM_DISPLAY

LD R1, ASCII_OFFSET
ADD R0, R0, R1
OUT

LD R0, NUM_DISPLAY
ADD R0, R0, R1
OUT

RET
; = = = = = = = = = = = = = = = = =
; DISPLAY VARS
SAVE_R7_DISPLAY .FILL #0
NUM_DISPLAY .FILL #0
THOUSAND .FILL #1000
HUNDRED .FILL #100
TEN .FILL #10
ASCII_OFFSET .FILl #48
HYPHEN .FILL #45

FLAG .FILL #0

; = = = = = = = = = = = = = = = = =


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

.END