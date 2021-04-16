MODEL SEGMENT
    
    FACT MACRO NUM      ; MACRO TO DO FACTORIAL
        
        MOV AL, NUM
        MOV BL, NUM
        
        CALCULATE:
        
        CMP BL, 1H      ; CHECK IF THE VALUE IS <=1
        JLE EXIT
        
        DEC BL          ; IF NOT, DEC BL AND MULTIPLY IT WITH THE VALUE IN AX
        MUL BL 
        
        JMP CALCULATE 
        
        EXIT:
        
        ADD AX, 30H     ; CONVERT TO DECIMAL AND PRINT
        MOV DX, AX
        MOV AH, 2
        INT 21H
        
    ENDM
    
ENDS

CODE SEGMENT
    
    START:
    
    FACT 3H
    
    MOV AX, 4C00H     
    INT 21H
    
ENDS
END START