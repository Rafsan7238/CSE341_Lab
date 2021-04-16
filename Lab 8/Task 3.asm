DATA SEGMENT
    
    STR DW "APPLE"
    
ENDS

MODEL SEGMENT
    
    REV MACRO X
        
        MOV SI, 0
        MOV CX, 5
        
        REVERSE:
        
        MOV AX, STR[SI]
        PUSH AX
        INC SI
        
        LOOP REVERSE
        
        MOV CX, 5
        MOV AH, 2
        
        PRINT:
        
        POP DX
        INT 21H
        
        LOOP PRINT
        
    ENDM
ENDS

CODE SEGMENT
    
    START:
    
    MOV AX, DATA
    MOV DS, AX
    MOV ES, AX
    
    REV STR
    
    MOV AX, 4C00H
    INT 21H
    
ENDS
END START
        