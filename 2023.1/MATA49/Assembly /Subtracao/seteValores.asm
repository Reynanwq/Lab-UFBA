; SUBTRACAO DE SETE NUMEROS

;aplicando os 3 primeiros valores nos registradors
MOV A, 9
MOV B, 1
MOV C, 2

SUB A, B ; 9 - 1 = 8
MOV D, A 
SUB D, C ; 8 - 2 = 6

MOV B, 3
MOV C, 1
MOV A, D
SUB A, B ; 6 - 3 = 3
SUB A, C ; 3 - 1 = 2
MOV D, A

MOV A, 5
MOV B, 3
MOV C, 2

SUB D, A; 2 - 5 = -3
SUB D, B; -3 - 3 = -6
SUB D, C; -6 - 2 = -8


;registadoress
;A = 5
;B = 3
;C = 2
;D= -8 OU f8



