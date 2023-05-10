;simples codigo que pergunta a liguagem, compilador e banco de dados do usuário

section .data
   linguagem db 0ah, "Nome da linguagem: ", 0 
   compilador db 0ah, "Nome do compilador: ", 0
   database db 0ah, "Nome do banco de dados: ", 0
   msg_i db 0ah, "O linguagem utilizada é: ", 0 
   msg_m db 0ah, "O compilador utilizado é: ", 0 
   msg_f db 0ah, "O banco de dados utilizado é: ", 0 
   res_ling db 8 DUP(0) 
   res_comp db 11 DUP(0)
   res_db db 6 DUP(0)
   
   ; explicando o uso do DUP, no 'res_ling' ele aumenta
   ;para 8x a capacidade: 0,0,0,0,0,0,0,0,0, ou seja
   ; 9 caracteres
   
section .text
    global _start
    
_start:
    ; exibir perguta da linguagem
    mov rax, 1
    mov rdi, 1
    mov rsi, linguagem
    mov rdx, 19
    syscall
    
    ; resposta da linguagem, pegando do teclado
    mov rax, 0
    mov rdi, 0
    mov rsi, res_ling
    mov rdx, 8
    syscall
    
    ; exibir pergunta do compilador
    mov rax, 1
    mov rdi, 1
    mov rsi, compilador
    mov rdx, 20
    syscall
    
     ; resposta do compilador, pegando do teclado
    mov rax, 0
    mov rdi, 0
    mov rsi, res_comp
    mov rdx, 11
    syscall
    
    ; exibir pergunta do banco de dados
    mov rax, 1
    mov rdi, 1
    mov rsi, database
    mov rdx, 24
    syscall
    
    ; resposta do banco de dados, pegando do teclado
    mov rax, 0
    mov rdi, 0
    mov rsi, res_db
    mov rdx, 6
    syscall
    
    ; exibir mensagem inicial
    mov rax, 1
    mov rdi, 1
    mov rsi, msg_i
    mov rdx, 26
    syscall
    
    ;ler para o usuario o que foi digitado
    mov rax, 1
    mov rdi, 1 
    mov rsi, res_ling
    mov rdx, 8
    syscall
    
    
    ; exibir mensagem do meio
    mov rax, 1
    mov rdi, 1
    mov rsi, msg_m
    mov rdx, 27
    syscall
    
    ;ler para o usuario o que foi digitado
    mov rax, 1
    mov rdi, 1 
    mov rsi, res_comp
    mov rdx, 11
    syscall
    
    ;exibir a ultima mensagem
    mov rax, 1
    mov rdi, 1
    mov rsi, msg_f
    mov rdx, 31
    syscall
    
    
    ;ler para o usuario o que foi digitado
    mov rax, 1
    mov rdi, 1 
    mov rsi, res_db
    mov rdx, 6
    syscall
    
    ;encerra programa
    mov rax, 60
    xor rdi, rdi
    syscall
    HLT
