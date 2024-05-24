quebrarPalavra(Palavra, Cont) :- 
    atom_chars(Palavra, Caracteres), 
    contar_as(Caracteres, Cont).

contar_as([],0).

contar_as(['a'|Tail], Cont) :- 
    contar_as(Tail, Cont_2). 
    Cont is Cont_2 + 1.

contar_as([_|Tail], Cont) :- 
    contar_as(Tail, Cont_2), 
    Cont is Cont_2.

contagem([], 0).
contagem([Palavra|Tail], Cont_Total) :-
    quebrarPalavra(Palavra, Cont),
    contagem(Tail, Cont_2),
    Cont_Total is Cont + Cont_2.

metodo(Lista, Cont_total) :-
    contagem(Lista, Cont_total).

main:-
    read(Lista),
    metodo(Lista, X),
    writeln(X),
    halt.