% Regla base: cualquier número elevado a 0 es 1
power(_, 0, 1).

% Regla recursiva por posposición:
% B: Base, E: Exponente, R: Resultado
power(B, E, R) :-
    E > 0,
    E1 is E - 1,
    power(B, E1, R1),
    R is B * R1.

    % Predicado principal que inicia el acumulador C (contador) en 0 y R (resultado) en 1
power_cola(B, E) :- 
    power_aux(0, 1, B, E).

% Casos base del auxiliar:
% 1. Si el exponente es 0
power_aux(_, R, _, 0) :- 
    write('El resultado es: '), write(R).

% 2. Cuando el contador alcanza el exponente N
power_aux(C, R, _, E) :- 
    C >= E, 
    write('El resultado es: '), write(R).

% Paso recursivo por cola:
power_aux(C, R, B, E) :- 
    C < E, 
    C1 is C + 1, 
    R1 is R * B, 
    power_aux(C1, R1, B, E).