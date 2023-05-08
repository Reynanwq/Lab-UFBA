; SUBTRACAO DE TRES NUMEROS

;movendo o valor para o registrador
MOV A, 9
MOV B, 7
MOV C, 1

; subtraindo 
SUB A, B ; (9 - 7)
MOV D, A ; movendo o valor 2 para o registrador D
SUB D, C ; (2 - 1) 

;ao final os registradores ficaram
; A = 2
; B = 7
; C = 1
; D = 1

