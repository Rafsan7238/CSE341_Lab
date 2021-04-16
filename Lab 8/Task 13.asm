DATA SEGMENT
    
    STR DB "([{}])$"
    T DB "TRUE$"
    F DB "FALSE$"
    
ENDS

CODE SEGMENT
    
    START:
    
    MOV AX, DATA
    MOV DS, AX
    MOV ES, AX
    
    CALL CHECK
    
    MOV AX, 4C00H
    INT 21H
    
    
    CHECK PROC      ; PROCEDURE TO CHECK PARENTHESIS
        
        MOV SI, 0
        MOV BL, 0H  ; TO KEEP COUNT OF ITEMS IN STACK
        
        MOV CX, 6H  ; LENGTH OF STR
        
        LOOP1:
        
        MOV AL, STR[SI]       ; LOAD THE VALUE IN STR[SI] TO AL
        
        CMP AL, '('           ; COMPARE AL AND GO TO CORRESPONDING SECTION
        JE INPUT
        
        CMP AL, '['
        JE INPUT
        
        CMP AL, '{'
        JE INPUT
        
        CMP AL, ')'
        JE OUTPUT1
        
        CMP AL, ']'
        JE OUTPUT2
        
        CMP AL, '}'
        JE OUTPUT3
        
        
        INPUT:
               
        MOV AH, 0H    ; MAKE SURE AX ONLY CONTAINS THE VALUE OF AL   
        PUSH AX       ; PUSH THE OPENING BRACKET TO STACK AND INC COUNT
        INC BL
        
        JMP CONTINUE 
        
        
        OUTPUT1: 
        
        CMP BL, 0H     ; NOT BALANCED IF THERE'S NO OPENING BRACKET FOR A CLOSING BRACKET
        JLE FALSE
        
        POP DX         ; ELSE POP THE STACK TOP AND DEC STACK COUNT
        DEC BL
        
        CMP DX, '('    ; COMPARE IF OPENING AND CLOSING BRACKETS CORRESPOND TO EACH OTHER
        JE CONTINUE    ; IF TRUE, CONTINUE ELSE THE BRACKETS ARE NOT BALANCED
        JMP FALSE
        
        
        OUTPUT2:
        
        CMP BL, 0H
        JLE FALSE
        
        POP DX
        DEC BL
        
        CMP DX, '['
        JE CONTINUE
        JMP FALSE 
        
        
        OUTPUT3:
        
        CMP BL, 0H
        JLE FALSE
        
        POP DX
        DEC BL
        
        CMP DX, '{'
        JE CONTINUE
        JMP FALSE
        
        
        CONTINUE:
        
        INC SI
        LOOP LOOP1
        
        
        EXIT_LOOP:
        
        CMP BL, 0H      ; CHECK IF STACK IS EMPTY AFTER THE LOOP ENDS
        JE TRUE         ; IF TRUE, BRACKETS ARE BALANCED ELSE NOT BALANCED
        JMP FALSE
        
        TRUE:
        
        LEA DX, T       ; IF BALANCED, PRINT TRUE AND EXIT
        MOV AH, 9
        INT 21H
        
        JMP EXIT
        
        
        FALSE:
        
        LEA DX, F       ; ELSE PRINT FALSE AND EXIT
        MOV AH, 9
        INT 21H
        
        EXIT:
        
        RET             ; RETURN TO CALLER AND END PROCEDURE
        CHECK ENDP 
        
ENDS
END START