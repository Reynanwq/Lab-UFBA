section .data
    palavra db 'Hello World!', 0
    converte_caractere db 0,0,0,0,0,0,0,0;
    
section .text
    global _start
    
_start:
    mov rdi, palavra; Carrega o valor da letra em A no registrador rdi
    xor rcx, rcx ; Inicializar contador (RCX) com zero
    
loop_start:
     cmp byte [rdi], 0 ; Verificar se o byte atual é nulo (terminador da string)
     je loop_end ; se for nulo, sai do loop
     
     inc rcx ;incrementa o contador
     inc rdi ; avanca para o proximo byyyte da string
     jmp loop_start ; volta para o inicio do loop

loop_end:
    ; o tamanho da string foi já esta armazenada em rcx
    
    ;converter o tamanho em caractere para que seja exibido
    mov rsi, converte_caractere ; passando o endereco
    add rsi, 7 ;avanca 7 posicoes e comeca a inserir do ultimo byte de memoria
    mov rax, rcx
    mov rcx, 8
    mov rbx, 10 ;base decimal

converte_caractere_loop:
    xor rdx, rdx
    div rbx  ; Divide rax por rbx, o quociente é armazenado em rax e o resto em rdx
    add dl, '0'; converte para o equivalente na tabela ASCII
    dec rsi 
    mov byte[rsi], dl
    loop converte_caractere_loop ; Repetir até que todos os dígitos sejam convertidos
    
    
    ; leitura do tamanho, exibir como um numero
    mov rax, 1
    mov rdi, 1
    mov rdx, 8 ; botei 8 porque é o tamanho de um registrado de 64 bytes
    add rsi, 1 ;avanca uma posicao para ignorar o byte nulo
    syscall
    
    ; Encerrar programa
    mov rax, 60
    xor rdi, rdi
    syscall
