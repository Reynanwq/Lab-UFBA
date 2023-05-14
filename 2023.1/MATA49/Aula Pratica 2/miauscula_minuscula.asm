section .data
    letra db 'A'
    
section .bss
    letra_maiuscula resb 1
    
section .text
    global _start
    
_start:
    mov rax, [letra]     ; Carrega o valor da letra em A no registrador rax
    
    cmp rax, 'A'         ; Verifica se a letra é maiuscula
    jb encerra_program   ; Pula se a letra não for minúscula e encerra o programa
    
    add rax, 32          ; Converte a letra minúscula em maiúscula
    mov [letra_maiuscula], rax
    
encerra_program:

    ; Escrita
    mov rax, 1
    mov rdi, 1
    mov rsi, letra_maiuscula
    mov rdx, 1
    syscall
    
    ; Encerrar programa
    mov rax, 60
    xor rdi, rdi
    syscall
