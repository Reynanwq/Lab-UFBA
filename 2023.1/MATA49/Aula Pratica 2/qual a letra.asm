section .data
   msg db 10, "Hello World!", 0

section .bss
    soma resb 2
    
section .text
    global _start

_start:
    mov rax, 30
    mov rbx, 45
    add rax, rbx
    mov [soma], rax
    
    mov rax, 1
    mov rdi, 1
    mov rsi, soma
    mov rdx, 2
    syscall
    
    

    

    
    ;cmp: comparar
    ;jmp: pula, se for igual
    ;rbx: registradores de uso geral
    ;rax: registradores de uso geral
    ;rcx: registradores de uso geral
