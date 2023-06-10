;ALUNO: REYNAN DA SILVA DIAS PAIVA
;N° MATRICULA: 221115751

; Código em NASM

section .data
    extern format_int
    extern format_float
    extern format_string
    extern text_aritmetica
    extern text_geometrica
    extern text_harmonica
    extern message_opcao
    extern message_input
    extern message_input2
    extern message_input3

section .text
    global main_asm

extern printf
extern scanf
extern exit

extern media_aritmetica
extern media_geometrica
extern media_harmonica

extern lerFloat
extern lerInt
extern imprimirFloat

main_asm:
    ; chamada para lerFloat(message_input)
    mov rdi, message_input
    call lerFloat
    movss xmm0, xmm0
    movss [rsp+8], xmm0

    ; chamada para lerFloat(message_input2)
    mov rdi, message_input2
    call lerFloat
    movss xmm0, xmm0
    movss [rsp+16], xmm0

     ; chamada para lerFloat(message_input3)
    mov rdi, message_input3
    call lerFloat
    movss xmm0, xmm0
    movss [rsp+24], xmm0

    ; chamada para lerInt(message_opcao)
    mov rdi, message_opcao
    call lerInt
    mov dword [rsp+24], eax

    ; Verifica se a função aritmetica deve ser chamada
    cmp dword [rsp+24], 1
    jne chamar_demais_funcoes

    ; Chamada da função artimetica
    movss xmm0, dword [rsp+8]
    movss xmm1, dword [rsp+16]
    movss xmm2, dword [rsp+24]
    call media_aritmetica

    ; chamada para imprimirFloat(message_soma, result)
    mov rdi, text_aritmetica
    movss xmm0, xmm0
    call imprimirFloat

    jmp imprimir_demais_funcoes

chamar_demais_funcoes:
    ; Chamada das demais funções
    movss xmm0, dword [rsp+8]
    movss xmm1, dword [rsp+16]
    movss xmm1, dword [rsp+24]
    call media_geometrica

    ; chamada para imprimirFloat(message_subtracao, result)
    mov rdi, text_geometrica
    movss xmm0, xmm0
    call imprimirFloat

    movss xmm0, dword [rsp+8]
    movss xmm1, dword [rsp+16]
    movss xmm1, dword [rsp+24]
    call media_harmonica

    ; chamada para imprimirFloat(message_multiplicacao, result)
    mov rdi, text_harmonica
    movss xmm0, xmm0
    call imprimirFloat

imprimir_demais_funcoes:
    ; Código para imprimir os resultados das demais funções
    ; ...

    ; Encerrar o programa
    xor edi, edi
    call exit




    
    
    ; ----------------------------- EXPLICANDO O CÓDIGO ---------------------------------------
    
    ;extern: no codigo, foi utilizado com objetivo de chamar as funcoes do .C, sendo elas ->  media_aritmetica; media_geometrica; media_harmonica

    ;rsp: é o STACK POINTER -> armazena dados temporários durante a execuão do programa.

    ;movsss: mov um valor de um local de memória ou registrador para um registrador do tipo xmm de 32 bits, especifico para trabalhar com pontos flutuantes

    ;dword: garante que os valores estão sendo interpretados corretamente como ponto flutuante de 32 bits, garante que a operação seja executada corretamente.
    
    ;ret: encerra programa