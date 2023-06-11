#include <stdio.h>

float converte_celsius(float temperatura_fahrenheit){
  return ((temperatura_fahrenheit - 32) * (5.0/9.0));
}

int main(){
  float fahrenheit, celsius;
  printf("Digite a temperatura em Fahrenheit: ");
  scanf("%f", &fahrenheit);
  celsius = converte_celsius(fahrenheit);
  printf("A Temperatura em graus Celsius é: %.2f\n", celsius);
  return 0;
}     