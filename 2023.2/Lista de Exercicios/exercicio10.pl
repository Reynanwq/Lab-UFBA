% 10 - Utilizando a base de dados abaixo, crie as seguintes regras:
% Regra para consultar todos os avos sem usar recursividade
% Regra para consultar todos os ancestrais - utilizar recursividade
% Regra para consultar todos os descendentes - utilizar recursividade

progenitor(maria, jose).
progenitor(joao, jose).
progenitor(joao, ana).
progenitor(jose, julia).
progenitor(jose, iris).
progenitor(iris, jorge).

avo(X, Y) :- progenitor(X, Z), progenitor(Z, Y).

% Ancestrais: Os ancestrais sao os indivíduos que estao antes de uma pessoa em uma linhagem familiar.
ancestrais(A, P) :- progenitor(A, P).
ancestrais(A, P) :- progenitor(A, Z), ancestrais(Z, P).

% Descendentes: Os descendentes são os indivíduos que vem depois de uma pessoa em uma linhagem familiar.
descendentes(D, P) :- progenitor(P, D).
descendestes(D, P) :- progenitor(P, Z), descendentes(D, Z).



  
