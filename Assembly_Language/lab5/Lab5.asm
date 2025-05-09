;R0 = input/output
;R1 = (n-1)
;R2 = used for base case
;R3 = (n-2)
;R4 = global variables
;R5 = frame pointer
;R6 = stack pointer
;R7 = return address


.ORIG x3000
; main() function begins here
LD R6, STACK_POINTER

ADD R6, R6, #-1      ; R6 = 6fff
STR R7, R6, #0       ; storing R7 in the stack at x6fff

ADD R6, R6, #-1      ;R6 = 6ffe
ADD R5, R6, #0       ; copying R6 to R5
STR R5, R6, #0       ; storing R5 to address 6ffe


LEA R4, GLOBAL_VARIABLES
LEA R0, PROMPT
PUTS
GETC  ; to except the number to use as input to the fibocacci function
OUT

ADD R6, R6, #-1    ; R6 = 6ffd (where we will put the terms variable)
ADD R0, R0, #-12
ADD R0, R0, #-12
ADD R0, R0, #-12
ADD R0, R0, #-12


STR R0, R6, #0



JSR fibocacci
LDR R2, R5, #-2 ;output
LDR R1, R5, #-1 ;input
AND R3, R3, #0
AND R4, R4, #0
ADD R4, R4, #-1

LEA R0, OPEN
PUTS

ADD R0, R1, #0
ADD R0, R0, #12
ADD R0, R0, #12
ADD R0, R0, #12
ADD R0, R0, #12
OUT

LEA R0, CLOSED
PUTS

ADD R3, R2, #0
ADD R3, R3, #-10
BRp TWO_DIGITS


ADD R0, R2, #0
ADD R0, R0, #12
ADD R0, R0, #12
ADD R0, R0, #12
ADD R0, R0, #12
OUT




;begin popping
ADD R6, R6, #1  ; R6 = 6ffd
LDR R5, R6, #0

ADD R6, R6, #1 ; R6 = 6ffe
LDR R7, R6, #0

ADD R6, R6, #1  ;R6 = 6fff

ADD R6, R6, #1  ;R6 = 7000
HALT

TWO_DIGITS
ADD R3, R3, #10
REPITITION
ADD R4, R4, #1
ADD R3, R3, #-10
BRp REPITITION
ADD R3, R3, #10

ADD R0, R4, #0
;ADD R0, R2, #0
ADD R0, R0, #12
ADD R0, R0, #12
ADD R0, R0, #12
ADD R0, R0, #12
OUT
ADD R0, R3, #0
;ADD R0, R2, #0
ADD R0, R0, #12
ADD R0, R0, #12
ADD R0, R0, #12
ADD R0, R0, #12
OUT

;begin popping
ADD R6, R6, #1  ; R6 = 6ffd
LDR R5, R6, #0

ADD R6, R6, #1 ; R6 = 6ffe
LDR R7, R6, #0

ADD R6, R6, #1  ;R6 = 6fff

ADD R6, R6, #1  ;R6 = 7000
HALT

;;;;;;;;;;;;;;;;;;;all the global variables;;;;;;;;;;;;;
GLOBAL_VARIABLES
PROMPT .STRINGZ "Please enter a number n:  "
OPEN .STRINGZ "\nF("
CLOSED .STRINGZ ") = "
STACK_POINTER .FILL x7000
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


fibocacci
;ADD R0, R0, #12
;ADD R0, R0, #12
;ADD R0, R0, #12
;ADD R0, R0, #12
;OUT
;ADD R0, R0, #-12
;ADD R0, R0, #-12
;ADD R0, R0, #-12
;ADD R0, R0, #-12
ADD R6, R6, #-1     ;R6 = 6ffc (where we will store the end result variable)

ADD R6, R6, #-1  ; R6 = 6ffb
STR R7, R6, #0   ; storing the R7

ADD R6, R6, #-1  ; R6 = 6ffa where we will be storing the function return value

STR R5, R6, #0  ; storing the previous frame pointer
ADD R5, R6, #0   ; copying R6 into R5

ADD R6, R6, #-1  ;R6 = 6ff9
STR R3, R6, #0

ADD R6, R6, #-1  ;R6 = 6ff8
STR R2, R6, #0

ADD R6, R6, #-1  ;R6 = 6ff7
STR R1, R6, #0

ADD R6, R6, #-1  ;R6 = 6ff6
STR R0, R6, #0

ADD R6, R6, #-1  ;R6 = 6ff5
;ADD R5, R6, #0

;;;;;determine if the basecases are to be implemented or not;;;;;;;;;;;;;

LDR R0, R5, #3
ADD R1, R0, #-1
BRz BASE_CASE_REACHED

ADD R0, R0, #1
ADD R0, R0, #-1

;AND R2, R2, #0
;ADD R2, R0, #-1
BRz BASE_CASE_REACHED

ADD R0, R0, #-1  ; decrementing the inputed value from the keyboard
STR R0, R6, #0   ; R6 = 6ff5
JSR fibocacci  ; calling the first fibocacci function(n-1)

LDR R1, R6, #0

ADD R6, R6, #1 ;popping the runtime stack R6 = 6ff5
ADD R0, R0, #-1 ; (n-2)

STR R0, R6, #0 ; store input(n-2) on stack


JSR fibocacci  ; calling the second fibocacci function(n-2)

LDR R3, R6, #0

ADD R6, R6, #1	; R6 = 6ff5

ADD R0, R1, R3  ; adding the results together



BASE_CASE_REACHED
STR R0, R5, #2 ; storing the value in R0 into the empty slot below R7




ADD R6, R6, #1 ;R6 = 6ff6
LDR R0, R6, #0

ADD R6, R6, #1 ; r6 = 6ff7
LDR R1, R6, #0

ADD R6, R6, #1 ; R6 = 6ff8
LDR R2, R6, #0

ADD R6, R6, #1  ; R6 = 6ff9
LDR R3, R6, #0

ADD R6, R6, #1  ; R6 = 6ffa
LDR R5, R6, #0

ADD R6, R6, #1  ; R6 = 6ffb
LDR R7, R6, #0

ADD R6, R6, #1  ; R6 = 6ffc

ret

.END

;Program written by
;Tyler
;Raymond 
;Harvey