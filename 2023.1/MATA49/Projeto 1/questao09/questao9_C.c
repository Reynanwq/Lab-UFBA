/*
ALUNO: REYNAN DA SILVA DIAS PAIVA
N° MATRICULA: 221115751
*/
#include <stdio.h>

extern char* verifica(float l1, float l2, float l3){
  if (l1 == l2 && l2 == l3) {
      return "Equilátero";
    }
    else if (l1 == l2 || l1 == l3 || l2 == l3) {
      return "Isósceles";
    } 
    else {
      return "Escaleno.";
    }
}

int main(){
  float l1, l2, l3;

  printf("Digite o primeiro lado: ");
  scanf("%f", &l1);
  printf("Digite o segundo lado: ");
  scanf("%f", &l2);
  printf("Digite o terceiro lado: ");
  scanf("%f", &l3);


  printf("O Triangulo é: %s\n", verifica(l1, l2, l3));

  return 0;
}