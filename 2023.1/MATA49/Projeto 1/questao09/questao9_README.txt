PARA RODAR O PROGRAMA, BASTA DIGITAR NO TERMINAL:

- gcc -c -m64 questao9_C.c
- nasm -f elf64 questao9.asm
- gcc -m64 -o questao9 questao9_C.o questao9.o -lm -no-pie
- ./questao9



Escreva um programa em assembly que receba os
três lados do triângulo, por exemplo, l1, l2 e l3. E
verifique se o triângulo é equilátero, isósceles, ou
escaleno.
