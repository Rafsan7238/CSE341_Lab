A DB 3
B DB 5
C DB 0

;QUES 1    

MOV AL, A
MOV AH, B
SUB AH, AL
MOV A, AH

;QUES 2

MOV AL, A
ADD AL, 1
NEG AL
MOV A, AL
         
;QUES 3

MOV AL, B
INC AL
MOV AH, A
ADD AH, AL
MOV C, AH

;QUES 4

MOV AL, A
DEC AL
MOV AH, B
SUB AH, AL
MOV A, AH         