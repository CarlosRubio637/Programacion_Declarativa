% Pertenencia (member)

list_member(X, [X|_]).
list_member(X, [_|Tail]) :- list_member(X, Tail).


% Longitud de una lista

list_length([], 0).
list_length([_|TAIL], N) :- 
    list_length(TAIL, TailLength), 
    N is TailLength + 1.


% Concatenación de listas (append / list_concat)

list_concat([], L, L).
list_concat([X1|L1], L2, [X1|L3]) :- 
    list_concat(L1, L2, L3).


% Eliminar un elemento de una lista

list_delete(X, [X], []).
list_delete(X, [X|L1], L1).
list_delete(X, [Y|L2], [Y|L1]) :- 
    list_delete(X, L2, L1).


% Insertar al inicio (head) y al final (tail)

insert_head(X, L, [X|L]).

insert_tail(X, L, R) :- 
    list_concat(L, [X], R).

list_insert(X, L, R) :- 
    list_delete(X, R, L).


% Permutaciones y Combinaciones

list_permutation([], []).
list_permutation(L, [X|P]) :- 
    list_delete(X, L, L1), 
    list_permutation(L1, P).

combination(0, _, []).
combination(K, [X|L], [X|C]) :- 
    K > 0, 
    K1 is K - 1, 
    combination(K1, L, C).
combination(K, [_|L], C) :- 
    K > 0, 
    combination(K, L, C).


% Invertir una lista (reverse)

list_reverse([], []).
list_reverse([Head|Tail], Reversed) :- 
    list_reverse(Tail, RevTail), 
    list_concat(RevTail, [Head], Reversed).


% Orden de listas (Ascendente y Descendente)

list_order_asc([]).
list_order_asc([_]).
list_order_asc([X, Y | Tail]) :- 
    X =< Y, 
    list_order_asc([Y|Tail]).

list_order_desc([]).
list_order_desc([_]).
list_order_desc([X, Y | Tail]) :- 
    X >= Y, 
    list_order_desc([Y|Tail]).


% Algoritmo MergeSort y Comprobación con las listas A, B y C de la imagen

mergesort([], []).
mergesort([A], [A]).
mergesort([A, B|R], S) :- 
    split([A, B|R], L1, L2), 
    mergesort(L1, S1), 
    mergesort(L2, S2), 
    merge(S1, S2, S).

split([], [], []).
split([A], [A], []).
split([A, B|R], [A|Ra], [B|Rb]) :- 
    split(R, Ra, Rb).

merge(A, [], A).
merge([], B, B).
merge([A|Ra], [B|Rb], [A|M]) :- 
    A @=< B, 
    merge(Ra, [B|Rb], M).
merge([A|Ra], [B|Rb], [B|M]) :- 
    A @> B, 
    merge([A|Ra], Rb, M).

% Listas de la imagen para pruebas directas en consola:
% A = [mesa, casa, plato, olla, cacerola]
% B = [8, 7, 7, 589, 993, 791, 814, 1089]
% C = [verde, rojo, aqua, azul, amarillo, cafe]
% 
% Consultas de prueba para la consola de Prolog:
% ?- mergesort([mesa, casa, plato, olla, cacerola], ResA).
% ?- mergesort([8, 7, 7, 589, 993, 791, 814, 1089], ResB).
% ?- mergesort([verde, rojo, aqua, azul, amarillo, cafe], ResC).