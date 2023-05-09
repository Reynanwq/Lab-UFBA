section .data
;aqui colocamos os dados que nos estaremos declarando
    seuNome db "Qual o seu nome? ", 
    lenMensagem equ $-seuNome
    
    ;pergunta o semestre em que o aluno esta
    seuSemestre db " Em que semestre voce esta? ", 
    lenMensagem2 equ $-seuSemestre
    
    ;exibe mensagem final
    ultimaMsg db " Programação de Software Básico, Reynan Paiva seja bem vindo ao quarto semestre ";
    tamUltimaMsg equ $-ultimaMsg
        
.bss:
    ;nome do aluno
    nome db " Reynan Paiva "
    lenNome equ $-nome;
    
    ;semestre do aluno
    semestre db " quarto semestre "
    lenSemestre equ $-semestre;
    
    ;nome resb 10
    ;semestre resb 10

section .text
    global _start

_start: ;
    ;pergunta nome
    mov rax, 1 
    mov rdi, 1 
    mov rsi, seuNome
    mov rdx, lenMensagem 
    syscall
    
    ;responde nome
    mov rax, 1 
    mov rdi, 1 
    mov rsi, nome
    mov rdx, lenNome
    syscall
    
    ;pergunta semestre
    mov rax, 1 
    mov rdi, 1 
    mov rsi, seuSemestre
    mov rdx, lenMensagem2
    syscall
    
    ;responde semestre
    mov rax, 1 
    mov rdi, 1 
    mov rsi, semestre
    mov rdx, lenSemestre
    syscall
    
    ;exibir ultima mensagem
    mov rax, 1
    mov rdi, 1
    mov rsi, ultimaMsg
    mov rdx, tamUltimaMsg
    syscall
    
    
    ;encerrar programa
    mov rax, 60 
    mov rdi, 0
    syscall ;
