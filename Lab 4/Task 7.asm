DATA SEGMENT
    
    ME DB "IT IS EVEN$"
    MO DB "IT IS ODD$"
    
ENDS

CODE SEGMENT
    
    START:
    
    MOV AX, DATA
    MOV DS, AX
    MOV ES, AX
    
    ; INPUT A NUMBER
    
    MOV AH, 1
    INT 21H
    MOV AH, 0
    
    ; IF NUMBER%2 == 0, PRINT EVEN; ELSE PRINT ODD
    
    MOV BL, 2
    
    DIV BL
    CMP AH, 0
    JNE ODD
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    LEA DX, ME
    MOV AH, 9
    INT 21H
    JMP EXIT
    
    ODD:
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H 
    
    LEA DX, MO
    MOV AH, 9
    INT 21H
    
    EXIT:
    
    MOV AX, 4C00H
    INT 21H
    
ENDS
END START