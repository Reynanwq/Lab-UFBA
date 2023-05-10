section .data
    prompt_nome db "Digite seu nome: ", 0 ;O VALOR ZERO INDICA O TERMINO DA STRING
    prompt_semestre db "Digite o semestre: ", 0 
    mensagem_inicial db "Programação de Software Básico, ", 0
    mensagem_do_meio db " seja bem vindo ao ", 0
    nome db 12 DUP (0) ; RESERVA UM ESPACO DE MEMORIA DE 100 BYTES
    semestre db 16 DUP (0) ; 'DUP' DUPLICA O VALOR DE '0' EM 100 VEZES

section .text
    global _start

_start:
    ; Pergunta o nome do usuário
    mov rax, 1 ; funcao de leitura
    mov rdi, 1 ; saida padrão
    mov rsi, prompt_nome ; rsi armazena os dados que foram passados ppr prompt_nome
    mov rdx, 18 ; COMPRIMENTO DA STRING: TAMANHO 18
    syscall
    
    ; Lê o nome digitado
    mov rax, 0 ; operacao de leitura de dados
    mov rdi, 0 ; queremos ler dados do teclado
    mov rsi, nome ; armazena o primeiro dado digitado pelo usuario
    mov rdx, 12 ; tamanho maximo de dados que podem ser lidos
    syscall

    ; Pergunta o semestre do usuário
    mov rax, 1
    mov rdi, 1
    mov rsi, prompt_semestre
    mov rdx, 20
    syscall

    ; Lê o semestre digitado
    mov rax, 0
    mov rdi, 0
    mov rsi, semestre
    mov rdx, 16
    syscall

    ; Imprime a mensagem de boas-vindas com o nome e o semestre
    mov rax, 1
    mov rdi, 1
    mov rsi, mensagem_inicial
    mov rdx, 35
    syscall
    

    ;exibe o nome digitado
    mov rax, 1
    mov rdi, 1
    mov rsi, nome
    mov rdx, 12
    syscall
    
    
    ;exibe a mensagem "seja bem vindo ao"
    mov rax, 1
    mov rdi, 1
    mov rsi, mensagem_do_meio
    mov rdx, 18
    syscall
    
    
    ;exibe o semestre digitado
    mov rax, 1
    mov rdi, 1
    mov rsi, semestre
    mov rdx, 16
    syscall
    

    ; Encerra o programa
    mov rax, 60
    xor rdi, rdi
    syscall
    HLT ;  CONFIRMANDO O ENCERRAMENTO DO PROGRAMA
