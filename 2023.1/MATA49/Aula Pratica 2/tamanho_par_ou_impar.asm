section .data
    palavra db 'Hello World!', 0
    converte_caractere db 0,0,0,0,0,0,0,0;
    mensagem_par db 'O tamanho e par', 0
    mensagem_nao_par db 'O tamanho e impar', 0
    
section .text
    global _start
    
_start:
    mov rdi, palavra
    xor rcx, rcx ;armazena o tamanho da string
    
loop_start:
     cmp byte [rdi], 0 ;verifica se a verificacao acabou
     je loop_end ;finaliza
     
     inc rcx;guarda quantidade
     inc rdi;proximo byte da palavra
     jmp loop_start


;Quando um número é par, seu bit menos significativo é sempre zero, 
;pois ele é divisível por 2. 
;Por outro lado, se o número é ímpar, 
;o bit menos significativo é sempre 1.


loop_end:
    ; O tamanho da string está armazenado em rcx
    
    ; Verificar se o tamanho é par
    mov rax, rcx
    and rax, 1
    cmp rax, 0
    je tamanho_par
    
    ; Caso o tamanho não seja par:
    ; Exibir mensagem indicando que o tamanho não é par
    mov rax, 1
    mov rdi, 1
    mov rdx, 20
    lea rsi, [mensagem_nao_par]
    syscall
    
    jmp fim_programa
    
tamanho_par:
    ; Caso o tamanho seja par:
    ; Exibir mensagem indicando que o tamanho é par
    mov rax, 1
    mov rdi, 1
    mov rdx, 17
    lea rsi, [mensagem_par]
    syscall
    
fim_programa:
    ; Encerrar programa
    mov rax, 60
    xor rdi, rdi
    syscall
