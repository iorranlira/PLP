operacao(N,Y) :- Y is N ** 2.

metodo(N) :-
    loop(1,N).


loop(X,N) :- 
    X =< N,
    operacao(X,Result),
    write(Result), nl,
    X1 is X + 1,
    loop(X1,N).


main :-
read(N),
metodo(N),
halt.
