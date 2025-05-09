.ORIG x3000
LD R6, STACK_BOTTOM			; R6 = x6000

; pushing main's return address
ADD R6, R6, #-1				; R6 = x5FFF
STR R7, R6, #0

; pushing prev frame pointer
ADD R6, R6, #-1				; R6 = x5FFE
STR R5, R6, #0

ADD R5, R6, #0				; R5 = x5FFE = R6 = R6 + 0

; pushing save R0
ADD R6, R6, #-1				; R6 = x5FFD
STR R0, R6, #0

; pushing int x
ADD R6, R6, #-1				; R6 = x5FFC
LD R0, INITIAL_INT_X		; R0 = int x = 6
STR R0, R6, #0

; pushing int y
ADD R6, R6, #-1				; R6 = x5FFB

; pushing int n
ADD R6, R6, #-1				; R6 = x5FFA
;LDR R0, R5, #-2			; R0 = int x = 6
STR R0, R6, #0

JSR FACTORIAL

; popping factorial's return value
LDR R0, R6, #0				; R0 = x02D0 = factorial's return value
ADD R6, R6, #1				; R6 = x5FFA

; store factorial's return value into int y
STR R0, R5, #-3

; store 0 into main's return value
AND R0, R0, #0				; R0 = 0
STR R0, R5, #2

; popping int n, int y, intx
ADD R6, R6, #3				; R6 = x5FFD

; popping save R0
LDR R0, R6, #0
ADD R6, R6, #1				; R6 = x5FFE

; popping prev frame pointer
LDR R5, R6, #0
ADD R6, R6, #1				; R6 = x5FFF

; popping main's return address
LDR R7, R6, #0
ADD R6, R6, #1				; R6 = x6000

HALT

STACK_BOTTOM .FILL x6000
INITIAL_INT_X .FILL #6

FACTORIAL

; pushing factorial's return value
ADD R6, R6, #-1				; R6 = x5FF9

; pushing factorial's return address
ADD R6, R6, #-1				; R6 = x5FF8
STR R7, R6, #0

; pushing prev frame pointer
ADD R6, R6, #-1				; R6 = x5FF7
STR R5, R6, #0

ADD R5, R6, #0				; R5 = x5FF7 = R6 = R6 + 0

; pushing save R0
ADD R6, R6, #-1				; R6 = x5FF6
STR R0, R6, #0

; pushing save R1
ADD R6, R6, #-1				; R6 = x5FF5
STR R1, R6, #0

; pushing save R2
ADD R6, R6, #-1				; R6 = x5FF4
STR R2, R6, #0

; if (n == 0)
LDR R0, R5, #3				; R0 = int n
BRnp N_IS_NONZERO

; return 1
;AND R0, R0, #0
ADD R0, R0, #1				; R0 = 1
STR R0, R5, #2
BRnzp POP_ALL

N_IS_NONZERO

; pushing n - 1
ADD R0, R0, #-1				; R0 = n - 1
ADD R6, R6, #-1				; R6 = x5FF3
STR R0, R6, #0

JSR FACTORIAL

; popping factorial's return value
LDR R0, R6, #0				; R0 = factorial(n - 1)
ADD R6, R6, #1				; R6 = x5FF3

; popping n - 1
ADD R6, R6, #1				; R6 = x5FF4

LDR R1, R5, #3				; R1 = int n
AND R2, R2, #0				; R2 = 0

MULTIPLY
ADD R2, R0, R2
ADD R1, R1, #-1
BRp MULTIPLY

; R2 = n * factorial(n-1)
STR R2, R5, #2

POP_ALL

; popping save R2
LDR R2, R6, #0
ADD R6, R6, #1				; R6 = x5FF5

; popping save R1
LDR R1, R6, #0
ADD R6, R6, #1				; R6 = x5FF6

; popping save R0
LDR R0, R6, #0
ADD R6, R6, #1				; R6 = x5FF7

; popping prev frame pointer
LDR R5, R6, #0
ADD R6, R6, #1				; R6 = x5FF8

; popping factorial's return address
LDR R7, R6, #0
ADD R6, R6, #1				; R6 = x5FF9

RET

.END