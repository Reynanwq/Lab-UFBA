woman(pam).
woman(ann).
woman(pat).
woman(liz).

man(tom).
man(bob).
man(jim).

genitor(tom, bob).
genitor(tom, liz).
genitor(pam, bob).
genitor(bob, ann).
genitor(bob, pat).
genitor(pat, jim).

% Verificar se X é filho de Y
filho(X, Y) :- genitor(Y, X).

% Verificar se X e mae de Y
mother(X, Y) :- genitor(X, Y), woman(X).

% VERIFICAR SE X E IRMAO DE Y
brother(X, Y) :- genitor(Z, X), genitor(Z, Y).

% VERIFICAR SE X E AVO DE Y
grandfather(X, Y) :- genitor(X, Z), genitor(Z, Y).

% VERIFICAR SE X E NETO DE Y
neto(X, Y) :- genitor(Y, Z), genitor(Z, X).
