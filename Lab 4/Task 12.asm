DATA SEGMENT
    
    I DB "i$"
    K DB "k$"
    L DB "l$"
    M DB "m$"
    
ENDS

CODE SEGMENT
    
    START:
    
    MOV AX, DATA
    MOV DS, AX
    MOV ES, AX
    
    ; INPUT A NUMBER
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    ; FOR 0-3
    
    CMP BL, '0'
    JE PRINT_i
    
    CMP BL, '1'
    JE PRINT_i
    
    CMP BL, '2'
    JE PRINT_i
    
    CMP BL, '3'
    JE PRINT_i 
    
    ; FOR 4-6
    
    CMP BL, '4'
    JE PRINT_k
    
    CMP BL, '5'
    JE PRINT_k
    
    CMP BL, '6'
    JE PRINT_k
    
    ; FOR 7-9 
    
    CMP BL, '7'
    JE PRINT_l
    
    CMP BL, '8'
    JE PRINT_l
    
    CMP BL, '9'
    JE PRINT_l
    
    ; FOR 10
    
    JMP PRINT_m
    
    
    
    PRINT_i:
    
    MOV AH, 9
    LEA DX, I
    INT 21H
    JMP EXIT
    
    PRINT_k:
    
    MOV AH, 9
    LEA DX, K
    INT 21H
    JMP EXIT
    
    PRINT_l:
    
    MOV AH, 9
    LEA DX, L
    INT 21H
    JMP EXIT
    
    PRINT_m:
    
    MOV AH, 9
    LEA DX, M
    INT 21H
    
    EXIT:
    
    MOV AX, 4C00H
    INT 21H
    
ENDS
END START