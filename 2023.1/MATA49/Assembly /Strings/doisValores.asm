	JMP start
hello: DB "Primeiro Numero"
       DB 0
frase1: DB "Segundo Numero"
       DB 0
frase2: DB "Resultado: ___"
       DB 0

start:
	MOV C, hello
	MOV D, 232
	CALL print

	MOV C, frase1
	CALL print

	MOV C, frase2
	CALL print

	HLT

print:
	PUSH A
	PUSH B
	MOV B, 0

.loop:
	MOV A, [C]
	MOV [D], A
	INC C
	INC D
	CMP B, [C]
	JNZ .loop

	POP B
	POP A
	RET
