section .data
    espaco db " ", 0

section .bss
    nome resb 4
    last_letra resb 1

strlen:
    mov rax, 0
    mov bl, [nome] 
    
    .loop:
        cmp byte [array+rax], 0
        je end 
    
        cmp byte [array+rax], bl  
        je find 
    
        inc rax ;
        jmp .loop ; 

global _satrt
_start:

    mov rax, 0
    mov rdi, 0
    mov rsi, nome
    mov rdx, 4
    syscall
    
    mov rdi, nome
    call strlen
    push rax ;inserindo valor na pilha
    
    mov rax, 1
    mov rdi, 1
    mov rsi, nome
    mov rdx, 1
    syscall
    
    pop rcx, 
    mov rdi, [nome+rcx-1]
    mov [last_letra], rdi
    
    mov rax, 1 
    mov rdi, 1
    mov rsi, espaco
    mov rdx, 1 
    syscall
    
    
    mov rax, 1 
    mov rdi, 1
    mov rsi, last_letra
    mov rdx, 1
    syscall
    
    
    ;encerra programa
    mov rax, 60 
    xor rdi, rdi
    syscall
    
    
