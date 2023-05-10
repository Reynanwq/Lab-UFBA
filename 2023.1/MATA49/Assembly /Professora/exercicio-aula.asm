section .data
    prompt_nome db "Digite seu nome: ", 0
    prompt_semestre db "Digite o semestre: ", 0
    mensagem db "Programação de Software Básico, ", 0
    nome db 100 DUP (0)
    semestre db 100 DUP (0)

section .text
    global _start

_start:
    ; Pergunta o nome do usuário
    mov rax, 1
    mov rdi, 1
    mov rsi, prompt_nome
    mov rdx, 18
    syscall

    ; Lê o nome digitado
    mov rax, 0
    mov rdi, 0
    mov rsi, nome
    mov rdx, 100
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
    mov rdx, 100
    syscall

    ; Imprime a mensagem de boas-vindas com o nome e o semestre
    mov rax, 1
    mov rdi, 1
    mov rsi, mensagem
    mov rdx, 35
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, nome
    mov rdx, 100
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, semestre
    mov rdx, 100
    syscall

    ; Encerra o programa
    mov rax, 60
    xor rdi, rdi
    syscall
