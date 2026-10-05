% ==============================================================================
% Almacenar los dígitos de un número en una lista
% ==============================================================================

% Caso base: un número menor a 10 se convierte directamente en una lista con ese único dígito
almacenar(N, [N]) :- 
    N < 10.

% Caso recursivo: se obtiene el último dígito con el módulo (mod)
% y se continúa procesando la división entera (div)
almacenar(N, [Digito | Resto]) :- 
    N >= 10,
    Digito is N mod 10,
    N1 is N div 10,
    almacenar(N1, Resto).