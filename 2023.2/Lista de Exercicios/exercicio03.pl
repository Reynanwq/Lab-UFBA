User
:- initialization(main). % Isso define o ponto de entrada para o programa

main :-
    write('-------- DIGITE O SEU NOME --------'), nl,
    read(N),
    write('Tudo bem com você? '),
    write(N), nl, nl,
    halt. % Isso encerra o programa
