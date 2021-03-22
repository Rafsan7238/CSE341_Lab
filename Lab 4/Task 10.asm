DATA SEGMENT
    
    MAX DB "MAXIMUM NUMBER IS $"
    MIN DB "MINIMUM NUMBER IS $"
    
ENDS

CODE SEGMENT
    
    START:
    
    MOV AX, DATA
    MOV DS, AX
    MOV ES, AX
    
    ; INPUT 2 NUMBERS
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV BH, AL
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    ; CHECK IF NUM1 >= NUM2
    
    CMP BL, BH
    JGE MAX_NUM1
    
    MOV CL, BL
    MOV CH, BH
    JMP CHECK_AGAIN
    
    MAX_NUM1:
    
    MOV CH, BL
    MOV CL, BH
    
    ; INPUT ANOTHER NUMBER AND CHECK
    
    CHECK_AGAIN:
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    ; CHECK IF NUM3 >= CH
    
    CMP BL, CH
    JGE MAX_NUM3
    
    CMP BL, CL
    JL MIN_NUM3
    
    MAX_NUM3:
    
    MOV CH, BL
    JMP PRINT
    
    MIN_NUM3:
    
    MOV CL, BL
    JMP PRINT
    
    ; PRINT MAX AND MIN
    
    PRINT:
    
    LEA DX, MAX
    MOV AH, 9
    INT 21H
    
    MOV DL, CH
    MOV AH, 2
    INT 21H
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    LEA DX, MIN
    MOV AH, 9
    INT 21H
    
    MOV DL, CL
    MOV AH, 2
    INT 21H
    
    ; EXIT
    
    MOV AX, 4C00H
    INT 21H
    
ENDS
END START  