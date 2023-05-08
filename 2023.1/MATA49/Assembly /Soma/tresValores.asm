; SOMANDO TRES VALORES

;move valor para registradores
MOV A, 5
MOV B, 1
MOV C, 2

; soma dois registradores e armazena o resultado em D
ADD A, B ; (5 + 1) = 6
MOV D, A 

; SOMA O RESULTADO COM O ULTIMO VALOR  E ARMAZENA EM D
ADD A, C ; (6 + 2) = 8
MOV D, A

;A = 8
;B = 6
;C = 2
;D = 8
