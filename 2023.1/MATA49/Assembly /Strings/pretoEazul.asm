JMP start
	preto: DB "Preto"
	DB 0; termina de ler string

	azul: DB "Azul"
	DB 0;

start:
	MOV C, preto
	MOV D, 232
	CALL print

	MOV C, azul
	CALL print

	HLT; PROGRAMA TERMINOU DE EXECUTAR COM SUCESSO
print:
	PUSH A, ;empilha o valor do regis A na pilha do processador
	PUSH B,
	MOV B, 0

.loop:
	MOV A, [C];valor processador C, le bite do end e armazena A
	MOV [D], A; conteudo A em um end de memoria especificado por D 
	INC C, ;avanca para o proximo end de memoria 
	INC D,
	CMP B, [C];compara o valor de B com o apontado por c. Se for 0 o programa encerra
	JNZ .loop

	POP B; desenpilha o valor de B
	POP A; deseempilha valor de A
	RET ;retorna para o ponto em que a funcao foi chamada
	
