DATA SEGMENT
    
    MV DB "VOWEL$"
    MC DB "CONSONANT$"
    
ENDS

CODE SEGMENT
    
    START:
    
    MOV AX, DATA
    MOV DS, AX
    MOV ES, AX
    
    ; INPUT A LETTER
    
    MOV AH, 1
    INT 21H
    MOV BL, AL 
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    ; IF VOWEL, PRINT VOWEL, ELSE PRINT CONSONANT
    
    CMP BL, 'A'
    JE VOWEL
    
    CMP BL, 'E'
    JE VOWEL
    
    CMP BL, 'I'
    JE VOWEL
    
    CMP BL, 'O'
    JE VOWEL
    
    CMP BL, 'U'
    JE VOWEL
    
    CMP BL, 'a'
    JE VOWEL
    
    CMP BL, 'e'
    JE VOWEL
    
    CMP BL, 'i'
    JE VOWEL
    
    CMP BL, 'o'
    JE VOWEL
    
    CMP BL, 'u'
    JE VOWEL
    
            
    ; CONSONANT
    
    LEA DX, MC
    MOV AH, 9
    INT 21H
    JMP EXIT
    
    ; VOWEL
            
    VOWEL:
    
    LEA DX, MV
    MOV AH, 9
    INT 21H
    
    
    EXIT:
    
    MOV AX, 4C00H
    INT 21H
    
ENDS
END START