DATA SEGMENT
ENDS

CODE SEGMENT
	START:

	MOV AX, DATA
	MOV DS, AX
	MOV ES, AX

	MOV CX, 0
	MOV AX, 5
	MOV BX, 6

	MULTIPLY:
	CMP BX, 0
	JE END

	ADD CX, AX
	DEC BX
	JMP MULTIPLY

	END: 
	MOV AX, 4C00H
	INT 21H

ENDS
END START