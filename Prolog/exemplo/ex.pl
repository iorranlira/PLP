metodo(X,Y) :- Y is X * 2.

main :- 
read(X),
metodo(X,Y),
write(Y),
halt.