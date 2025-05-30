.ORIG x3000

; #~#~#~#~#~#~#~#~#
; =-=-=-=-=-=-=-=-=
; INITIALIZER CODE
; # DO NOT TOUCH #
; - - - - - - - - -
LD R6, STACK_PTR ; load stack pointer
LEA R4, STATIC_STORAGE ; load global vars pointer
ADD R5, R6, #0 ; set frame pointer
; current stack pointer is sitting on main's return slot
; there are no arguments to our main function
JSR MAIN
HALT
; SETUP VARS
STACK_PTR .FILL x6000
STATIC_STORAGE
.FILL #5 ; array_size global variable
; - - - - - - - - -
; INITIALIZER OVER
; =-=-=-=-=-=-=-=-=
; #~#~#~#~#~#~#~#~#


; #~#~#~#~#~#~#~#~#
; =-=-=-=-=-=-=-=-=
MAIN;(void)

; push return address
ADD R6, R6, #-1
STR R7, R6, #0

; push previous frame pointer
ADD R6, R6, #-1
STR R5, R6, #0

; set current frame pointer
ADD R5, R6, #0

; allocate local variables
; - - - - - - - - -
; #-1: a
; #-2: b
; #-3: c
; - - - - - - - - -
ADD R6, R6, #-3 ; create 0 spaces on the stack (uninitialized)
; =-=-=-=-=-=-=-=-=

; a = 2
AND R0, R0, #0
ADD R0, R0, #2
STR R0, R5, #-1

; b = 4
AND R0, R0, #0
ADD R0, R0, #4
STR R0, R5, #-2

; c = 6
AND R0, R0, #0
ADD R0, R0, #6
STR R0, R5, #-3

; push argument a
LDR R0, R5, #-1
ADD R6, R6, #-1
STR R0, R6, #0

; push argument c
LDR R0, R5, #-3
ADD R6, R6, #-1
STR R0, R6, #0

; push return slot
ADD R6, R6, #-1

; call PLUS
JSR PLUS

; fetch return value
; store in b
LDR R0, R6, #0
STR R0, R5, #-2

; pop return slot and arguments
ADD R6, R6, #3

; return b
LDR R0, R5, #-2
STR R0, R5, #2

; =-=-=-=-=-=-=-=-=
; deallocate local variables
ADD R6, R6, #3

; restore and pop previous frame pointer
LDR R5, R6, #0
ADD R6, R6, #1

; restore and pop return address
LDR R7, R6, #0
ADD R6, R6, #1

; return to caller
RET
; =-=-=-=-=-=-=-=-=
; #~#~#~#~#~#~#~#~#



.END