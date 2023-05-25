section .data
    array db 3,4,5,6,7,8,40, 0 ;definindo os valores do meu array
    var db 40 ;valor que desejo encontrar no array, o 0 é para definir o fim do array
    msg db "Valor encontrado no vetor." ;mensagem de sucesso
    lemsg equ $-msg ;carrega o tamanho da string
    
section .text
    global _start ;definindo
    
 
 findval:
    mov rax, 0
    mov bl, [var] ;bl => registrador que armazena menos bytes
    
    .loop:
        cmp byte [array+rax], 0 ;comparando se o valor do registrador é nulo
        je end ;se for 0 ele encerra o programa
    
        cmp byte [array+rax], bl  ; compara se o valor de bl existe
        je find ; pega o valor
    
        inc rax ; pula para o proximo
        jmp .loop ; inicia o looping
    
    find: ;metodo para encontrar um valor
        mov rax, 1 ;leitura
        mov rdi, 1 ;leitura
        mov rsi, msg ; recebe string
        mov rdx, lemsg ; recebe tamanho da string
        syscall ;exibe a mensagem na saida
        ret
    
    end: 
        ret
        
_start: 
    call findval ;chama a funcao
    
    ;encerra programa
    mov rax, 60 
    xor rdi, rdi
    syscall
