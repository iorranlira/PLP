divisor(X,Y) :- 0 is X mod Y.

ultimo_digito(X,Y) :- R is X mod 10, R =:= Y.


metodo(X,Y,R) :- divisor(X,Y),
ultimo_digito(X,Y), 
atomic_list_concat([Y, ' eh ao mesmo tempo divisor e o ultimo digito de ', X], R).

metodo(X,Y,R) :- divisor(X,Y),
\+ ultimo_digito(X,Y), 
atomic_list_concat([Y, ' eh divisor de ', X], R).

metodo(X,Y,R) :- \+ divisor(X,Y),
ultimo_digito(X,Y), 
atomic_list_concat([Y, ' eh o ultimo digito de ', X], R).

main :-
read(X), (X > 0 -> true; write("Input invalido."), halt),
read(Y), (Y > 0, Y < 10 -> true; write("Input invalido."), halt),
metodo(X,Y,R),
write(R),
halt.