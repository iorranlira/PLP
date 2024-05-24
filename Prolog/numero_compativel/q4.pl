ultimo_digito(X,Y) :- R is X mod 10, R =:= Y.

divisivel(X,Y) :- 0 is X mod Y.

compativel(X,Y) :- ultimo_digito(X,Y).
compativel(X,Y) :- divisivel(X,Y).

manipulaLista([], _ , []).

manipulaLista([Head|Tail], Mestre, [-1 | NewT]) :- 
    compativel(Head,Mestre), 
    manipulaLista(Tail, Mestre, NewT).

manipulaLista([Head|Tail], Mestre, [Head|NewT]) :- 
    \+ compativel(Head, Mestre), 
    manipulaLista(Tail, Mestre, NewT).

main :- 
  read(Lista),
  read(Mestre), (Mestre >= 1 , Mestre =< 9 
    -> manipulaLista(Lista, Mestre, NovaLista),
    writeln(NovaLista) ; writeln(Lista)), halt.
  