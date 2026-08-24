% --- Personajes y Roles ---
es_agente(leon).
es_estudiante(ashley).
es_espia(ada).
es_investigador(luis).

% --- Edades ---
edad(leon, 27).
edad(ashley, 20).
edad(ada, 26).
edad(luis, 32).

% --- Armas ---
lleva_arma(leon, pistola).
lleva_arma(leon, cuchillo).
lleva_arma(ada, pistola).
lleva_arma(luis, cuchillo).

% --- Enemigos e Infección ---
infectado_por_las_plagas(ganados).
infectado_por_las_plagas(regeneradores).

% --- Aparición de Enemigos ---
aparece_enemigo(ganados, pueblo).
aparece_enemigo(ganados, castillo).
aparece_enemigo(regeneradores, isla).

% --- Dificultad de Ubicaciones ---
dificultad(pueblo, alta).
dificultad(castillo, alta).
dificultad(isla, muy_alta).

% --- Ubicación de Personajes ---
ubicacion(leon, pueblo).
ubicacion(luis, pueblo).
ubicacion(ada, pueblo).
ubicacion(ada, castillo).