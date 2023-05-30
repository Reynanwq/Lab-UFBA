section .data
    prompt1 db "Digite o primeiro número: ", 0
    prompt2 db "Digite o segundo número: ", 0
    prompt3 db "Digite o terceiro número: ", 0
    result_msg db "A média aritmética é: %f", 10, 0
    result_msg2 db "A média geométrica é: %f", 10, 0
    result_msg3 db "A média harmônica é: %f", 10, 0
    format db "%f", 0

section .text
    global main

extern printf
extern scanf
extern pow

main:
    ; Reservar espaço para as variáveis locais
    sub rsp, 24
    
    ; Imprimir a mensagem de solicitação para o primeiro número
    mov edi, prompt1
    xor eax, eax
    call printf
    
    ; Ler o primeiro número
    lea rsi, [rsp+8]
    lea rdi, [format]
    xor eax, eax
    call scanf
    
    ; Imprimir a mensagem de solicitação para o segundo número
    mov edi, prompt2
    xor eax, eax
    call printf
    
    ; Ler o segundo número
    lea rsi, [rsp+16]
    lea rdi, [format]
    xor eax, eax
    call scanf
    
    ; Imprimir a mensagem de solicitação para o terceiro número
    mov edi, prompt3
    xor eax, eax
    call printf
    
    ; Ler o terceiro número
    lea rsi, [rsp+24]
    lea rdi, [format]
    xor eax, eax
    call scanf
    
    ; Carregar os valores das variáveis para os registradores de ponto flutuante
    movss xmm0, dword [rsp+8]   ; a
    movss xmm1, dword [rsp+12]  ; b
    movss xmm2, dword [rsp+16]  ; c
    
    ; Calcular a média aritmética
    addss xmm0, xmm1  ; a + b
    addss xmm0, xmm2  ; (a + b) + c
    movss xmm1, xmm0  ; copiar o resultado para xmm1
    mov eax, 3        ; valor inteiro 3
    cvtsi2ss xmm2, eax ; converter 3 para ponto flutuante em xmm2
    divss xmm1, xmm2  ; (a + b + c) / 3
    
    ; Armazenar a média aritmética
    movss dword [rsp], xmm1
    
    ; Calcular a média geométrica
    movss xmm0, dword [rsp+8]   ; a
    movss xmm1, dword [rsp+12]  ; b
    movss xmm2, dword [rsp+16]  ; c
    mulss xmm0, xmm1  ; a * b
    mulss xmm0, xmm2  ; (a * b) * c
    sqrtss xmm0, xmm0 ; sqrt(a * b * c)
    
    ; Armazenar a média geométrica
    movss dword [rsp+4], xmm0
    
    ; Calcular a média harmônica
    movss xmm0, dword [rsp+8]   ; a
    movss xmm1, dword [rsp+12]  ; b
    movss xmm2, dword [rsp+16]  ; c
    mov eax, 1        ; valor inteiro 1
    cvtsi2ss xmm3, eax ; converter 1 para ponto flutuante em xmm3
    divss xmm3, xmm0  ; 1 / a
    divss xmm3, xmm1  ; (1 / a) / b
    divss xmm3, xmm2  ; ((1 / a) / b) / c
    rcpss xmm3, xmm3  ; 1 / (((1 / a) / b) / c)
    
    ; Armazenar a média harmônica
    movss dword [rsp+8], xmm3
    
    ; Imprimir a média aritmética
    mov edi, result_msg
    movss xmm0, dword [rsp]
    xor eax, eax
    call printf
    
    ; Imprimir a média geométrica
    mov edi, result_msg2
    movss xmm0, dword [rsp+4]
    xor eax, eax
    call printf
    
    ; Imprimir a média harmônica
    mov edi, result_msg3
    movss xmm0, dword [rsp+8]
    xor eax, eax
    call printf
    
    ; Restaurar o ponteiro da pilha
    add rsp, 24
    
    ; Retornar 0 para indicar sucesso
    xor eax, eax
    ret
