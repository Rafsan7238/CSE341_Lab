DATA SEGMENT
    
    M1 DB "ENTER A NUMBER:$"
    M2 DB "ENTER ANOTHER NUMBER:$"
    M3 DB "ADDITION:$"
    M4 DB 0
    
ENDS

CODE SEGMENT
    START:
    
    MOV AX, DATA
    MOV DS, AX
    MOV ES, AX
    
    ; TAKE 1ST NUM
    
    LEA DX, M1
    MOV AH, 9
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    ; TAKE 2ND NUM
    
    LEA DX, M2
    MOV AH, 9
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV BH, AL
    
    ; ADDITION
    
    MOV M4, BL
    ADD M4, BH
    SUB M4, 030H
    
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    LEA DX, M3
    MOV AH, 9
    INT 21H
    
    MOV DL, M4
    MOV AH, 2
    INT 21H
    
    
    MOV AX, 4C00H
    INT 21H
    
ENDS

END START