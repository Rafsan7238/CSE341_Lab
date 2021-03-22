DATA SEGMENT
    
ENDS

CODE SEGMENT
START:

    MOV AX, DATA
    MOV DS, AX
    MOV ES, AX
    
    ; READ A LETTER
    
    MOV AH, 1
    INT 21H
    MOV BL, AL 
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    ; IF IT IS UPPERCASE (LETTER<61H>, THEN PRINT  
    
    CMP BL, 61H
    JGE EXIT
    
    MOV AH, 2
    MOV DL, BL
    INT 21H
    JMP EXIT
    
    EXIT: 
    
    MOV AX, 4C00H
    INT 21H
    
ENDS
END START