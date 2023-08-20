% ----------- QUESTAO 09 ---------
% Apresente uma mensagem para informar um numero inteiro e positivo
% Leia um numero N qualquer
% Valide se N e maior ou igual a 0
% Faça a chamada da funcao fatorial
% Apresente o resultado com a mensagem O Fatorial de N e: F

fatorial(0, 1).
fatorial(N, F) :- N > 0, N1 is N - 1, fatorial(N1, F1), F is N * F1.

main :-
  write("INFORME UM NUMERO INTEIRO POSITIVO: "),
  read(N),
  (N >= 0 -> fatorial(N, F), format('O fatorial de ~d e: ~d', [N, F]); write('Numero invalido')).

% PARA EXECUTAR, DIGITE NO TERMINAL: "main." (sem as aspas)
