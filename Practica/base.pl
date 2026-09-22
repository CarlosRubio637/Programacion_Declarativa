masgrande(elefante, caballo).
masgrande(caballo, perro).
masgrande(perro, raton).
masgrande(raton, hormiga).

esmasgrande(X, Y) :- masgrande(X, Y).
esmasgrande(X, Y) :- masgrande(X, Z), esmasgrande(Z, Y).