JMP start
top: DB "Zeus"  ; declarando uma variavel que recebe uma string
	DB 0; parou de percorrer a string zeus
jg: DB "Oner" ; declarando uma variavel que recebe uma string
	DB 0; parou de percorrer a string oner
mid: DB "Faker"
	DB 0; parou de percorrer a string faker
adc: DB "Gumayusi"
	DB 0; parou de percorrer a string gumayusi
sup: DB "Keria"
	DB 0; parou de  percorrer a string keria

start:
	MOV C, top; registrador C armazena end de memoria de 16 bits
	MOV D, 232;
	CALL print; 

	MOV C, jg ; C carrega endereco de memoria da string na var jg
	CALL print

	MOV C, mid
	CALL print

	MOV C, adc
	CALL print

	MOV C, sup
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
	
