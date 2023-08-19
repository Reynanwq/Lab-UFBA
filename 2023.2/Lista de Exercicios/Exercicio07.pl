aluno(joao, calculo).
aluno(maria, calculo).
aluno(joel, programacao).
aluno(joel, estrutura).

frequenta(joao, ufba).
frequenta(maria, ufba).
frequenta(joel, ifba).

professor(carlos, calculo).
professor(ana_paula, estrutura).
professor(pedro, programacao).

funcionario(pedro, ifba).
funcionario(ana_paula, ufba).
funcionario(carlos, ufba).

% a) Quem sao os alunos do professor X ?
professor_alunos(X, Y) :- professor(X, Z), funcionario(X, T), aluno(Y, Z), frequenta(Y, T).

% b) Quem sao as pessoas (alunos e professores) que estao associadas a uma Instituicao X ?
associado(Y, X) :- aluno(Y, Z), frequenta(Y, X) ; professor(Y, Z), funcionario(Y, X).
