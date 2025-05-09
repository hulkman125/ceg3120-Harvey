.ORIG x5000
LD R6, STACK_BOTTOM        ;R6 = x7000
LEA R4, Size_Of_Array


;;;;;;;;;;;;;;;;;;;;;;;;;;;;storing the elements of the array into the memory;;;;;;;;;;;
;LDR R5, R4, #0
;STR R5, R6, #0
                             
ADD R6, R6, #-1    ;R6 = x6FFF
STR R7, R6, #0     ; storing the return value into address x6fff

ADD R6, R6, #-1 ; R6 is now equal to x6FFE
STR R5, R6, #0  ; storing the value in R5 into address x6ffE
ADD R5, R6, #0

ADD R6, R6, #-1  ; R6 = x6ffD
STR R0, R6, #0   ; storing the value in R0 in address x6ffd

ADD R6, R6, #-1  ; R6 = x6ffC
STR R1, R6, #0   

ADD R6, R6, #-1  ; R6 = x6ffB
STR R2, R6, #0

ADD R6, R6, #-1  ; R6 = x6ffA
STR R3, R6, #0

ADD R6, R6, #-1   ;R6 = x6FF9
LEA R0, Elements_Pointer
STR R0, R6, #0    ; storing the address of the array at address x6ff9

;STR R4, R6, #0 ; Storing the address of the array in x6ff9
ADD R6, R6, #-1  ;R6 = x6ff8  is where we will be storing the total variable

ADD R6, R6, #-1 ; X6ff7
LEA R0, Elements_Pointer ; R0 = address of Elements_Pointer
STR R0, R6, #0 ; Storing the address of the Elements_Pointer at address x6ff7

ADD R6, R6, #-1 ; R6 = x6ff6
LDR R0, R4, #0 ; R0 = 5
STR R0, R6, #0 ; storing 5 at address x6ff6

JSR Sum_Of_Squares

LDR R0, R6, #0     ; loading return value of Sum_Of_Squares

STR R0, R5, #-6    ;storing total at 6ff8
STR R0, R5, #2    ;storing total at main's return value at x7000

ADD R6, R6, #5    ; R6 = 6ffa
LDR R3, R6, #0    

ADD R6, R6, #1   ; R6 = 6ffb
LDR R2, R6, #0

ADD R6, R6, #1  ; R6 = 6ffc
LDR R1, R6, #0

ADD R6, R6, #1  ; R6 = 6ffd
LDR R0, R6, #0

ADD R6, R6, #1  ; R6 = 6ffe
LDR R5, R6, #0

ADD R6, R6, #1  ; R6 = 6fff
LDR R7, R6, #0

ADD R6, R6, #1  ; R6 = 7000
HALT  ; or foerever hold your peace







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



VARIABLES
Size_Of_Array .Fill #5   ; size of array we made
STACK_BOTTOM .FILL x7000
Elements_Pointer .FILL #2
				 .FILL #3
				 .FILL #5
				 .FILL #0
				 .FILL #1
		 

 
 
 
 
 
 
 
 
 
 
Sum_Of_Squares
; R3 = counter
ADD R6, R6, #-1  ; R6 = 6ff5
ADD R6, R6, #-1  ; R6 = x6ff4
STR R7, R6, #0   ; Storing R7 (the address we will be using to raturn to main) is stored at address x6ff4

ADD R6, R6, #-1  ; R6 = x6ff3
STR R5, R6, #0   ; storing the value of R5 into address x6ff3
ADD R5, R6, #0   ; R5 = x6ff3

ADD R6, R6, #-1  ; R6 = 6ff2
STR R0, R6, #0  ; storing r6 at 6ff2

ADD R6, R6, #-1  ; R6 = 6ff1
STR R1, R6, #0  ; storing r1 at 6ff1

ADD R6, r6, #-1 ; R6 = 6ff0
STR R3, R6, #0  ; storing r3 at 6ff0

;;;counter integer;;;;;;;;;;;;;
ADD R6, R6,#-1   ; R6 = x6fef
AND R0, R0, #0
STR R0, R6, #0    ; storing the number 0 in address x6fef
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;sum integer;;;;;;;;;;;;;;;;;;
ADD R6, R6, #-1   ; R6 = x6fee
AND R0, R0, #0
STR R0, R6, #0    ; storing the number 0 in address x6fee
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

WHILE_LOOP
LDR R0, R5, #-4  ; R0 equals to counter integer '5'
LDR R1, R5, #3   
LDR R3, R5, #-4
NOT R1, R1
ADD R1, R1, #1

ADD R1, R0, R1    ; check to see if we should loop or not
BRzp RETURN        


LDR R1, R5, #4    ; loading the array Pointer to R5
ADD R0, R1, R0    ; ADD counter and the array address into R0 to get value at index
LDR R0, R0, #0    ; LOAD value at the current array at R0

ADD R6, R6, #-1  ; R6 = 6fed
STR R0, R6, #0  ; storing the value of the counter array

JSR Square

LDR R0, R6, #0  ; R0 = square's return value
ADD R6, R6, #2  ; R6 = 6fee
LDR R1, R5, #-5   ; load sum into R1


ADD R0, R0, R1  
STR R0, R5, #-5  ; store new sum into stack

ADD R3, R3, #1   ; add counter
STR R3, R5, #-4
BRnzp WHILE_LOOP

RETURN
LDR R0, R5, #-5
STR R0, R5, #2

ADD R6, R6, #2   ; r6 = 6ff0
LDR R3, R6, #0   ; changeing the value of R3 to 6ff0

ADD R6, R6, #1   ;r6 = 6ff1
LDR R1, R6, #0 

ADD R6, R6, #1   ;r6 = 6ff2
LDR R0, R6, #0

ADD R6, R6, #1  ; R6 = 6ff3
LDR R5, R6, #0  ; r5 = 6ff3

ADD R6, R6, #1  ; R6 = 6ff4
LDR R7, R6, #0  ; r7 = 6ff4


ADD R6, R6, #1  ; r6 = 6ff5
ret



















Square
ADD R6, R6, #-1  ; R6 = x6fEc
ADD R6, R6, #-1  ; r6 = 6feb
STR R7, R6, #0   ; storing the r7 the square's return value

ADD R6, R6, #-1  ; R6 = x6fea
STR R5, R6, #0

ADD R5, R6, #0   ;R5 = x6fea

ADD R6, R6, #-1  ; R6 = X6FE9
STR R0, R6, #0   ; storing r0 on line 6fe9

ADD R6, R6, #-1  ;R6 = X6FE8
STR R1, R6, #0   

ADD R6, R6, #-1  ; R6 = x6FE7
STR R2, R6, #0

ADD R6, R6, #-1  ;R6 = x6fe6

AND R0, R0, #0
STR R0, R6, #0   ; storing product to x6fe6

LDR R1, R5, #3   ; loading the value of x into R1

ADD R2, R1, #0   ; copying the value of x into R2


MULTIPLY_LOOP
ADD R0, R1, R0
ADD R2, R2, #-1
BRp MULTIPLY_LOOP

STR R0, R5, #-4
STR R0, R5, #2

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;popping from the stack

ADD R6, R6, #1 ; R6 = 6fe7
LDR R2, R6, #0

ADD R6, R6, #1  ;R6 = 6fe8
LDR R1, R6, #0

ADD R6, R6, #1  ;r6 = 6fe9
LDR R0, R6, #0

ADD R6, R6, #1 ; R6 = 6fea
LDR R5, R6, #0

ADD R6, R6, #1 ;R6 = 6feb
LDR R7, R6, #0


ADD R6, R6, #1 ;R6 = 6ffc


RET

.END