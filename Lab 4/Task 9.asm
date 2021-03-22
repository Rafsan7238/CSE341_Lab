DATA SEGMENT
    
    MD DB "IT IS DIVISIBLE BY 5 AND 11$"
    MND DB "IT IS NOT DIVISIBLE BY 5 AND 11$"
    
ENDS

CODE SEGMENT
    
    START:
    
    MOV AX, DATA
    MOV DS, AX
    MOV ES, AX
    
    ; TAKE A NUMBER AND DIVIDE BY 55 (5*11=55)
    
    MOV AH, 0
    MOV AX, 110
    MOV BL, 55
    
    DIV BL
    
    CMP AH, 0
    JNE ELSE
    
    LEA DX, MD
    MOV AH, 9
    INT 21H
    JMP EXIT
    
    ELSE:
    
    LEA DX, MND
    MOV AH, 9
    INT 21H 
    
    EXIT:
    
    MOV AX, 4C00H
    INT 21H
    
ENDS
END START