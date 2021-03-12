DATA SEGMENT
    
    M1 DB "**********$"
    
ENDS

CODE SEGMENT
    START:
    
    MOV AX, DATA
    MOV DS, AX
    MOV ES, AX
    
    LEA DX, M1
    MOV AH, 9
    INT 21H
    
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    MOV DL, 0DH
    INT 21H 
    
    LEA DX, M1
    MOV AH, 9
    INT 21H
    
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    LEA DX, M1
    MOV AH, 9
    INT 21H
    
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    LEA DX, M1
    MOV AH, 9
    INT 21H
    
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    LEA DX, M1
    MOV AH, 9
    INT 21H
    
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    LEA DX, M1
    MOV AH, 9
    INT 21H
    
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    LEA DX, M1
    MOV AH, 9
    INT 21H
    
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    LEA DX, M1
    MOV AH, 9
    INT 21H
    
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    LEA DX, M1
    MOV AH, 9
    INT 21H
    
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    LEA DX, M1
    MOV AH, 9
    INT 21H
    
    MOV AX, 4C00H
    INT 21H
    
ENDS
END START