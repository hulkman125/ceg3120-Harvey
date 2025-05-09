.ORIG x3000
; = = = = = = = = = = = = = = = = =

LD R0, VAR_A
LD R1, VAR_B

JSR POW

ST R0, PRODUCT

HALT
; - - - - - - - - - - - - - - - - -
; MAIN VARS
VAR_A .FILL #4
VAR_B .FILL #6
PRODUCT .FILL #0
; = = = = = = = = = = = = = = = = =

; = = = = = = = = = = = = = = = = =
MULT
; save return address
ST R7, SAVE_R7_MULT

; saving arguments into parameters
ST R0, FACTOR_1
ST R1, FACTOR_2

; int multResult = 0
AND R0, R0, #0
ST R0, MULT_RESULT
; int i = 0
ST R0, VAR_I_MULT

START_MULT_LOOP
; i < FACTOR_2
LD R0, VAR_I_MULT
LD R1, FACTOR_2
NOT R1, R1
ADD R1, R1, #1
ADD R0, R0, R1
BRzp END_MULT_LOOP

; multResult += factor1
LD R0, MULT_RESULT
LD R1, FACTOR_1
ADD R0, R0, R1
ST R0, MULT_RESULT

; i++
LD R0, VAR_I_MULT
ADD R0, R0, #1
ST R0, VAR_I_MULT

BRnzp START_MULT_LOOP
END_MULT_LOOP

; load return value
LD R0, MULT_RESULT

; restore return address
LD R7, SAVE_R7_MULT
RET
; - - - - - - - - - - - - - - - - -
; MULT VARS
SAVE_R7_MULT .FILL #0

FACTOR_1 .FILL #0
FACTOR_2 .FILL #0
MULT_RESULT .FILL #0

VAR_I_MULT .FILL #0
; = = = = = = = = = = = = = = = = =

; = = = = = = = = = = = = = = = = =
POW
; save return address
ST R7, SAVE_R7_POW

; saving arguments into parameters
ST R0, BASE
ST R1, EXPONENT

; int powResult = 1
AND R0, R0, #0
ADD R0, R0, #1
ST R0, POW_RESULT

; int i = 0
AND R0, R0, #0
ST R0, VAR_I_POW

START_POW_LOOP
; i < EXPONENT
LD R0, VAR_I_POW
LD R1, EXPONENT
NOT R1, R1
ADD R1, R1, #1
ADD R0, R0, R1
BRzp END_POW_LOOP

; powResult *= exponent
LD R0, POW_RESULT
LD R1, BASE

JSR MULT

ST R0, POW_RESULT

; i++
LD R0, VAR_I_POW
ADD R0, R0, #1
ST R0, VAR_I_POW

BRnzp START_POW_LOOP
END_POW_LOOP

; load return value
LD R0, POW_RESULT

; restore return address
LD R7, SAVE_R7_POW
RET
; - - - - - - - - - - - - - - - - -
; POW VARS
SAVE_R7_POW .FILL #0

BASE .FILL #0
EXPONENT .FILL #0
POW_RESULT .FILL #0

VAR_I_POW .FILL #0
; = = = = = = = = = = = = = = = = =
.END