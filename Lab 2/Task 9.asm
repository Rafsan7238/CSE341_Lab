; CONST TO GR

MOV AL, 5
MOV AH, 8

; CONST TO MEM

NUM1 DB 2
NUM2 DW 20

MOV NUM1, AL
MOV NUM1, AH

; MEM TO GR

MOV AL, NUM1
MOV AH, NUM1 

; MEM TO SR

MOV DS, NUM2
MOV SS, NUM2

; SR TO GR 

MOV AX, SS
MOV BX, CS

; SR TO MEM

MOV NUM2, SS
MOV NUM2, DS

; GR TO GR

MOV AL, AH
MOV AH, AL

; GR TO SR

MOV DS, AX
MOV SS, BX

; GR TO MEM

MOV NUM1, AL
MOV NUM2, AX  