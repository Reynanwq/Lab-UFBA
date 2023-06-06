//gcc 7.4.0

//CODIGO EM C
#include  <stdio.h>

float soma(float a, float b){
    return a + b;
}   

float subtrair(float a, float b){
    return a - b;
}

float multiplica(float a, float b){
    return a * b;
}

int main(void)
{
    float a, b;
    //scanf code
    printf("Digite o primeiro número: ");
    scanf("%f", &a);
    
    printf("Digite o segundo número: ");
    scanf("%f", &b);
   
    printf("Soma: %.2f\n", soma(a,b));
    printf("Subtrair: %.2f\n", subtrair(a,b));
    printf("Multiplica: %.2f", multiplica(a,b));
    return 0;
}


;CONDIGO EM ASM

section .text: 
    global main

extern soma
extern subtrair
extern multiplica

    ;testar pala valroes altos
    movss xmm0, dword [rsp+8]
    movss xmm1, dword [rsp+12]
    call soma

    movss xmm0, dword [rsp+8]
    movss xmm1, dword [rsp+12]
    call subtrair
    
    movss xmm0, dword [rsp+8]
    movss xmm1, dword [rsp+12]
    call multiplica
    
    
    ret
