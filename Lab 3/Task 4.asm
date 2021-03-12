DATA SEGMENT
ENDS

CODE SEGMENT
    START:
    
    MOV AX, DATA
    MOV DS, AX
    MOV ES, AX
    
    
    MOV AH, 1
    INT 21H
    ADD AL, 32
    MOV BL, AL
    
    
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    
    MOV DL, BL
    MOV AH, 2
    INT 21H
    
    MOV AX, 4C00H
    INT 21H
    
ENDS
END START