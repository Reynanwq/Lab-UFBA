MOV A, 1
MOV B, 2
MOV C, 3

;iniciando adicao
ADD A, B
MOV D, A
ADD D, C

;A = 3
;B = 2
;C = 3
;D = 6
;iniciando remocao

SUB D, B ; 6-2 = 4
MOV B, D 
SUB D, A ; 4 - 3
MOV A, D 
SUB D, C ; 1 - 3
MOV C, D

;A = 1
;B = 4
;C = -1 OU FE
;D = -1 OU F3 
