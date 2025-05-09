.ORIG x3000
; = = = = = = = = = = = = = = = = =

AND R0, R0, #0
ADD R0, R0, #1

; MAIN CODE HERE

ONEPLACE .fill #0
TWOSPLACE .fill #0
THREESPLACE .fill #0
FOURSPLACE .fill #0



 
PROMPTA .STRINGZ "\nEnter First number (0 - 99) :  " 

PROMPTB .STRINGZ "\nEnter second number (0 - 99):  "
RESULTOUTPUT .STRINGZ "\nResult:  "

NUMA .BLKW #2	
NUMB .BLKW #2  
OPERSYMBOL .FILL #1 ; symbol for the operation


JSR GETNUM
JSR GETOP
AND R0, R0, #0
JSR GETNUM
JSR CALC
LD R0, ENDRESULT
JSR DISPLAY


HALT
; - - - - - - - - - - - - - - - - -

; MAIN VARS

; = = = = = = = = = = = = = = = = =

; = = = = = = = = = = = = = = = = =
DISPLAY
; DISPLAY CODE HERE
ST R7, SAVE_R7


AND R0, R0, #0
AND R1, R1, #0
AND R2, R2, #0
AND R3, R3, #0
AND R4, R4, #0
AND R5, R5, #0
AND R6, R6, #0
AND R7, R7, #0



LD R5, NEG_HUNDRED
LD R6, NEG_THOUSAND
LD R7, ENDRESULT

THOUSANDS
ADD R7, R7, R6
ADD R4, R4, #1
ADD R0, R7, #0
BRzp THOUSANDS					; if R7 is not greater than 1000
LD R6, POS_THOUSAND
ADD R7, R7, R6
ADD R4, R4, #-1

ADD R4, R4, #12
ADD R4, R4, #12
ADD R4, R4, #12
ADD R4, R4, #12
ST R4, FOURSPLACE



HUNDREDS
ADD R7, R7, R5
ADD R3, R3, #1
ADD R0, R7, #0
BRzp HUNDREDS
LD R6, POS_HUNDRED
ADD R7, R7, R6
ADD R3, R3, #-1

ADD R3, R3, #12
ADD R3, R3, #12
ADD R3, R3, #12
ADD R3, R3, #12
ST R3, THREESPLACE



TENS
ADD R7, R7, #-10
ADD R2, R2, #1
ADD R0, R7, #0
BRzp TENS
ADD R7, R7, #10
ADD R2, R2, #-1

ADD R2, R2, #12
ADD R2, R2, #12
ADD R2, R2, #12
ADD R2, R2, #12
St R2, TWOSPLACE


ADD R7, R7, #12
ADD R7, R7, #12
ADD R7, R7, #12
ADD R7, R7, #12
ST R7, ONEPLACE

LD R4, FOURSPLACE
LD R3, THREESPLACE
LD R2, TWOSPLACE
LD R1, ONEPLACE


LEA R0, RESULTOUTPUT
PUTS

POS_48 .FILL #48
AND R6, R6, #0
ADD R6, R6, #-12
ADD R6, R6, #-12
ADD R6, R6, #-12
ADD R6, R6, #-12
LD R5, POS_48


LD R7, NEG_SIGN
BRzp NON_NEG_SIGN
AND R0, R0, #0
ADD R0, R0, #12
ADD R0, R0, #12
ADD R0, R0, #12
ADD R0, R0, #9
OUT
AND R0, R0, #0
ST R0, NEG_SIGN

NON_NEG_SIGN
AND R0, R0, #0
ADD R4, R4,R6
BRz THREEdigits
ADD R4, R4, R5
ADD R0, R4, #0
OUT
ADD R0, R3, #0
OUT
ADD R0, R2, #0
OUT
ADD R0, R1, #0
OUT

AND R7, R7, #0
LD R7, SAVE_R7
RET

THREEdigits
ADD R3, R3, R6
BRz TWOdigits
ADD R3, R3, R5
ADD R0, R3, #0
OUT
ADD R0, R2, #0
OUT
ADD R0, R1, #0
OUT

AND R7, R7, #0
LD R7, SAVE_R7
RET

TWOdigits
ADD R2, R2, R6
BRz ONEdigits
ADD R2, R2, R5
ADD R0, R2, #0
OUT
ADD R0, R1, #0
OUT

AND R7, R7, #0
LD R7, SAVE_R7
RET

ONEdigits
ADD R0, R1, #0
OUT

LD R7, SAVE_R7
RET
; - - - - - - - - - - - - - - - - -
; DISPLAY VARS

; = = = = = = = = = = = = = = = = =

; = = = = = = = = = = = = = = = = =
GETNUM
; GETNUM CODE HERE

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;for the first integer;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
			; First we save R7 into memory so we can get back to where we jumped from

ADD R0, R0, #0

BRnz PART_B
ST R7, SAVE_R7	

;;;;;PART_A
LEA R0, PROMPTA				; Load the address of our string into R0
PUTS						; Print the string stored at the address of R0 to the screen
GETC
OUT						; Get the first character from the user (in ASCII format)
LD R1, NEGATIVE_ASCII_0		; R1 = #-48
ADD R0, R0, R1				; Convert the first character from ASCII to a number
							; Example: if the user typed "4" which is 0x34 in ASCII we need to convert it to 0x04 to use in math operations properly.
							; We can convert it by subtracting #48 from the number
ST R0, SAVE_FIRST_DIGIT		; Save the newly converted digit to memory

GETC
;OUT						; Get the next character from the user (it could be the enter key or another number!)
ADD R1, R0, #-10			; Subtract 10 from the character
BRp SKIP_ENTER_DETECTED		; If the result was positive, then we know the user did not enter the enter key and we can skip over the next few instructions


; If the enter key was detected
LD R0, SAVE_FIRST_DIGIT		; Load the first digit back into R0
ST R0, FIRST_INT      ; if the enter was pressed the digit well be sent to the first integer
LD R7, SAVE_R7				; Load the return address back into R7
RET							; Return from the subroutine with R0 containing our digit converted from ASCII

SKIP_ENTER_DETECTED			; If no enter was detected, let's continue on, starting from here
OUT
LD R1, NEGATIVE_ASCII_0		; R1 = #-48
ADD R0, R0, R1				; Convert this new character from ASCII to a number 
ST R0, SAVE_SECOND_DIGIT	; Save the newly converted digit to memory

; Next we grab the first digit and multiply by 10
; We have to do this because if the user entered in the digits "45", the "4" was the first character entered, and is in the 10's place
; So it must be multiplied by 10 before we add it to the second digit
; Example: 40 + 5 = 45

LD R0, SAVE_FIRST_DIGIT		; R0 = first digit
AND R1, R1, #0				; R1 = #0
ADD R1, R1, #10				; R1 = #10
AND R2, R2, #0				; R2 = #0

; Multiply loop
MUL_BY_10
ADD R2, R0, R2				; R2 = first digit * 10
ADD R1, R1, #-1
BRp MUL_BY_10

; Next we grab the second digit and add it to our first digit multiplied by 10
LD R0, SAVE_SECOND_DIGIT	; R0 = second digit
ADD R0, R0, R2				; R0 = (first digit * 10) + second digit
LD R7, SAVE_R7				; Load the return address back into R7
ST R2, FIRST_INT
LD R2, FIRST_INT
LD R6, SAVE_SECOND_DIGIT
ADD R2, R2, R6
ST R2, FIRST_INT
RET	; Return from the subroutine with R0 containing our digit converted from ASCII

;;;;;FOR THE SECOND INTEGER;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

NEG_SIGN .FILL #0 
PART_B	

ST R7, SAVE_R7				; First we save R7 into memory so we can get back to where we jumped from

LEA R0, PROMPTB				; Load the address of our string into R0
PUTS						; Print the string stored at the address of R0 to the screen
GETC
OUT						; Get the first character from the user (in ASCII format)
LD R1, NEGATIVE_ASCII_0		; R1 = #-48
ADD R0, R0, R1				; Convert the first character from ASCII to a number
							; Example: if the user typed "4" which is 0x34 in ASCII we need to convert it to 0x04 to use in math operations properly.
							; We can convert it by subtracting #48 from the number
ST R0, SAVE_FIRST_DIGIT		; Save the newly converted digit to memory

GETC
;OUT						; Get the next character from the user (it could be the enter key or another number!)
ADD R1, R0, #-10			; Subtract 13 from the character
BRp SKIP_ENTER_DETECTED_B		; If the result was positive, then we know the user did not enter the enter key and we can skip over the next few instructions


; If the enter key was detected
LD R0, SAVE_FIRST_DIGIT		; Load the first digit back into R0
ST R0, SECOND_INT ; (if the enter key was pressed then the digit will be sent to the second integer)
LD R7, SAVE_R7				; Load the return address back into R7
RET							; Return from the subroutine with R0 containing our digit converted from ASCII

SKIP_ENTER_DETECTED_B			; If no enter was detected, let's continue on, starting from here
OUT
LD R1, NEGATIVE_ASCII_0		; R1 = #-48
ADD R0, R0, R1				; Convert this new character from ASCII to a number 
ST R0, SAVE_SECOND_DIGIT	; Save the newly converted digit to memory

; Next we grab the first digit and multiply by 10
; We have to do this because if the user entered in the digits "45", the "4" was the first character entered, and is in the 10's place
; So it must be multiplied by 10 before we add it to the second digit
; Example: 40 + 5 = 45

LD R0, SAVE_FIRST_DIGIT	; R0 = first digit
AND R1, R1, #0				; R1 = #0
ADD R1, R1, #10				; R1 = #10
AND R2, R2, #0				; R2 = #0

; Multiply loop
MUL_BY_10b
ADD R2, R0, R2				; R2 = first digit * 10
ADD R1, R1, #-1
BRp MUL_BY_10b
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Next we grab the second digit and add it to our first digit multiplied by 10
LD R0, SAVE_SECOND_DIGIT	; R0 = second digit
ADD R0, R0, R2				; R0 = (first digit * 10) + second digit
LD R7, SAVE_R7				; Load the return address back into R7
ST R2, SECOND_INT
LD R2, SECOND_INT
LD R6, SAVE_SECOND_DIGIT
ADD R2, R2, R6
ST R2, SECOND_INT
RET	; Return from the subroutine with R0 containing our digit converted from ASCII


; Put our variables down here below our code
SAVE_R7 .BLKW #1						; We store R7 here for safe keeping
SAVE_FIRST_DIGIT .BLKW #1	;.FILL #0	; Store the first converted digit here
SAVE_SECOND_DIGIT .BLKW #1	;.FILL #0	; Store the second converted digit here
NEGATIVE_ASCII_0 .FILL #-48				; The value we must subtract an ASCII number by to get the actual value
ENDRESULT .fill #0
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


; - - - - - - - - - - - - - - - - -
; GETNUM VARS

; = = = = = = = = = = = = = = = = =

; = = = = = = = = = = = = = = = = =
GETOP
OPERATION .STRINGZ "\nEnter an operation (+, -, *):   "
; GETOP CODE HERE
ST R7, SAVE_R7
LEA R0, OPERATION
PUTS
GETC
OUT
ST R0, OPERSYMBOL


LD R7, SAVE_R7
RET
; - - - - - - - - - - - - - - - - -
; GETOP VARS

; = = = = = = = = = = = = = = = = =

; = = = = = = = = = = = = = = = = =

POS_THOUSAND .fill #1000
POS_HUNDRED .fill #100
NEG_THOUSAND .fill #-1000
NEG_HUNDRED .fill #-100


CALC
; CALC CODE HERE
ST R7, SAVE_R7

LD R1, FIRST_INT
BRz DONE_B
LD R2, SECOND_INT
BRz DONE_B
LD R3, OPERSYMBOL
ADD R2, R2, #-1

AND R0, R0, #0
AND R4, R4, #0
LD R4, FIRST_INT

ADD R3, R3, #-10
ADD R3, R3, #-10
ADD R3, R3, #-10
ADD R3, R3, #-12
BRz MULTIPLY
ADD R3, R3, #-1
BRz ADDITION
ADD R3, R3, #-2
BRz SUBTRACTION

ADD R2, R2, #-1
MULTIPLY
ADD R4, R4, R1
ADD R2, R2, #-1
BRp MULTIPLY
BRnzp DONE

ADDITION
ADD R4, R1, R2
ADD R4, R4, #1
BRnzp DONE 

SUBTRACTION
NOT R2, R2
ADD R4, R1, R2

BRn NEG
BRnzp DONE

NEG
NOT R4, R4
ADD R4, R4, #1

AND R7, R7, #0
ADD R7, R7, #-1
ST R7, NEG_SIGN
BRnzp DONE

DONE_B
LD R7, SAVE_R7
RET 

DONE
ST R4, ENDRESULT
LD R7, SAVE_R7

RET
; - - - - - - - - - - - - - - - - -
; CALC VARS

; = = = = = = = = = = = = = = = = =

FIRST_INT .FILL #0 
SECOND_INT .FILL #0 ;x3138




.END