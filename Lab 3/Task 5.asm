DATA SEGMENT
    
    M1 DB "THE SUM OF $"
    M2 DB " AND $"
    M3 DB " IS $"
    
ENDS

CODE SEGMENT
    START:
    
    MOV AX, DATA
    MOV DS, AX
    MOV ES, AX
    
    ; a
    
    MOV DL, '?'
    MOV AH, 2
    INT 21H
    
    ; 1ST NUM
    
    MOV AH, 1
    INT 21H
    
    MOV CL, AL
    MOV BL, AL
    
    ; 2ND NUM
    
    MOV AH, 1
    INT 21H
    
    MOV CH, AL
    
    ; ADD
    
    ADD CL, CH
    SUB CL, 030H
    
    ;PRINT
    
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    LEA DX, M1
    MOV AH, 9
    INT 21H
    
    MOV DL, BL
    MOV AH, 2
    INT 21H
    
    LEA DX, M2
    MOV AH, 9
    INT 21H
    
    MOV DL, CH
    MOV AH, 2
    INT 21H
    
    LEA DX, M3
    MOV AH, 9
    INT 21H
    
    MOV DL, CL
    MOV AH, 2
    INT 21H
    
    MOV AX, 4C00H
    INT 21H
    
ENDS
END START