DATA SEGMENT
    
    MAX DW 10  ; MAX NUMBER TO CHECK PRIME OF IS 10 (OR 0AH)
    NUM DW 2H  ; FIRST PRIME IS 2
    
ENDS

CODE SEGMENT
    
    START:
    
    MOV AX, DATA
    MOV DS, AX
    MOV ES, AX
    
    
    ITR_LOOP:
    
    CALL PRIME_CHECK
    
    CMP DX, 0H           ; IF DX==0, THE NUMBER HAD A FACTOR AND IS NOT PRIME
    JE CONTINUE
    
    PRIME:               ; ELSE NUMBER IS PRIME; PRINT IT
    
    MOV DX, NUM
    ADD DX, 30H
    MOV AH, 2
    INT 21H
    
    MOV DL, ' '
    MOV DH, 0H
    INT 21H
    
    CONTINUE:
    
    ADD NUM, 1H          ; INC THE CURRENT NUM
    MOV BX, NUM
    
    CMP BX, MAX          ; CHECK IF CURRENT NUM EXCEEDS MAX, THEN END PROCESS, ELSE RE-RUN THE LOOP
    JLE ITR_LOOP
    
    
    MOV AX, 4C00H
    INT 21H 
    
    
    
    PRIME_CHECK PROC
        
        MOV AX, NUM      ; NEED TO CHECK FOR A FACTOR BETWEEN 2 AND NUM/2
        MOV DX, 0H
        MOV CX, 2H
        DIV CX           ; DX:AX / CX
        
        MOV SI, AX       ; STORE THE VALUE OF NUM/2 FOR LOOP
        
        MOV DX, 1H       ; ASSUME NUM IS PRIME INITIALLY
        
        MOV CX, 2H  
        
        PRIME_LOOP:
        
        CMP CX, SI       ; CHECK IF CX EXCEEDS NUM/2, THEN EXIT, ELSE CONTINUE
        JG EXIT
        
        MOV AX, NUM      ; DIVIDE NUM IN DX:AX BY CX
        MOV DX, 0H
        DIV CX
        
        CMP DX, 0H       ; IF REMAINDER(DX)==0, NUM IS NOT PRIME SO EXIT
        JE EXIT
        
        INC CX           ; ELSE INC CX AND RE-RUN LOOP
        
        JMP PRIME_LOOP 
        
        
        EXIT:
        
        RET
        PRIME_CHECK ENDP
ENDS
END START