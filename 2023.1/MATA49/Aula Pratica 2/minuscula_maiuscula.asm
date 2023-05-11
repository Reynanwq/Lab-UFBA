section .data
    letra db "a"
    
section .bss
    letra_maiuscula resb 1
    
section .text
    global _start
    
_start:
    mov rax, letra
    add rax, 32 ;converte para maiuscula
    mov [letra_maiuscula], rax
    
    ;leitura
    mov rax, 1
    mov rdi, 1
    mov rsi, letra_maiuscula
    mov rdx, 1
    syscall
    
    ;encerrar programa
    mov rax, 60
    xor rdi, rdi
    syscall
    
