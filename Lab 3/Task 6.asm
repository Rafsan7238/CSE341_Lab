DATA SEGMENT
    
    M1 DB "ENTER THREE INITIALS: $"
    
ENDS

CODE SEGMENT
    START:
    
    MOV AX, DATA,
    MOV DS, AX
    MOV ES, AX
    
    ; a
    
    LEA DX, M1
    MOV AH, 9
    INT 21H
    
    ; b
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    
    MOV AH, 1
    INT 21H
    MOV BH, AL
    
    MOV AH, 1
    INT 21H
    MOV CL, AL
    
    ; c
    
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    MOV DL, BL
    MOV AH, 2
    INT 21H
    
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    MOV DL, 0DH
    INT 21H 
    
    MOV DL, BH
    MOV AH, 2
    INT 21H
    
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    MOV DL, CL
    MOV AH, 2
    INT 21H
    
    MOV AX, 4C00H
    INT 21H
    
ENDS
END START