;ALUNO: REYNAN DA SILVA DIAS PAIVA
;N° MATRICULA: 221115751

section .text
    global main

;chamando funcao do .C
extern media_aritmetica
extern media_geometrica
extern media_harmonica

    ;funcao media_aritmetica
    movss xmm0, dword [rsp+8]   ; 5
    movss xmm1, dword [rsp+12]  ; 4
    movss xmm2, dword [rsp+16]  ; 3
    call media_aritmetica 
    ; ((5+4+3)/3)
    ; O valor de retorno estará em xmm0

    ; Função media_geometrica
    movss xmm0, dword [rsp+8]   ; 5
    movss xmm1, dword [rsp+12]  ; 4
    movss xmm2, dword [rsp+16]  ; 3
    call media_geometrica 
    ; pow((5 * 4 * 3), (1.0 / 3.0))
    ; O valor de retorno estará em xmm0

    ; Chamada para a função media_harmonica
    movss xmm0, dword [rsp+8]   ; 5
    movss xmm1, dword [rsp+12]  ; 4
    movss xmm2, dword [rsp+16]  ; 3
    call media_harmonica
    ; (3.0 / ((1.0 / 5) + (1.0 / 4) + (1.0 / 3)));
    ; O valor de retorno estará em xmm0
        
    ret
    
    
    ; ----------------------------- EXPLICANDO O CÓDIGO ---------------------------------------
    
    ;extern: no codigo, foi utilizado com objetivo de chamar as funcoes do .C, sendo elas ->  media_aritmetica; media_geometrica; media_harmonica

    ;rsp: é o STACK POINTER -> armazena dados temporários durante a execuão do programa.

    ;movsss: mov um valor de um local de memória ou registrador para um registrador do tipo xmm de 32 bits, especifico para trabalhar com pontos flutuantes

    ;dword: garante que os valores estão sendo interpretados corretamente como ponto flutuante de 32 bits, garante que a operação seja executada corretamente.
    
    ;ret: encerra programa
