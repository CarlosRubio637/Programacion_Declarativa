:- [hechos].

% --- Personajes armados con armas de fuego ---
    tiene_arma_de_fuego(Personaje) :-
        lleva_arma(Personaje, pistola).

% --- Evaluación de peligro en una ubicación ---
    lugar_peligroso(Lugar) :-
        (dificultad(Lugar, alta) ; dificultad(Lugar, muy_alta)),
        aparece_enemigo(Enemigo, Lugar),
        infectado_por_las_plagas(Enemigo).

% --- Posibilidad de encuentro entre personajes ---
    pueden_encontrarse(P1, P2, Lugar) :-
        ubicacion(P1, Lugar),
        ubicacion(P2, Lugar),
        P1 \== P2.

% --- Filtro de edad para misiones ---
    experto_combate_cuerpo_a_cuerpo(Personaje) :-
        edad(Personaje, Edad),
        Edad >= 25,
        lleva_arma(Personaje, cuchillo).