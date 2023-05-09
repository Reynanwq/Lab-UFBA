section .data
;aqui colocamos os dados que nos estaremos declarando
    msg db "Hello world!", 0ah
    lenMensagem equ $-msg
section .text
    global _start

_start: ;para arq x86_64 utilizamos o registrador rax
    mov rax, 1 
    mov rdi, 1 ;utilizamos 1 porque é a saida de dados
    mov rsi, msg ;recebe a minha mensagem
    mov rdx, lenMensagem ;ler o tamanho da minha mensagem
    syscall
    
    ;precisamos encerrar o programa
    mov rax, 60 
    mov rdi, 0
    syscall ;
