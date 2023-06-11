PARA RODAR O PROGRAMA, BASTA DIGITAR NO TERMINAL:

- gcc -c -m64 questao5_C.c
- nasm -f elf64 questao5.asm
- gcc -m64 -o questao5 questao5_C.o questao5.o -lm -no-pie
- ./questao5

Escreva um programa para ler uma temperatura em
graus Fahrenheit, calcular e escrever o valor
correspondente em graus Celsius.