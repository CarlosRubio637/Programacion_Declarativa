% Caso recursivo: si N > 1, se resuelve suma(N-1) y se suma N.
suma(N, Suma) :-
    N > 1,
    N1 is N - 1,
    suma(N1, Suma1),
    Suma is Suma1 + N.