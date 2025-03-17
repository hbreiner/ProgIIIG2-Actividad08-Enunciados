% Definimos quiénes son hombres
hombre(jose).
hombre(tomas).
hombre(jaime).

% Definimos quiénes son mujeres
mujer(clara).
mujer(isabel).
mujer(ana).
mujer(patricia).

% Definimos relaciones de progenitor
progenitor(clara, jose).
progenitor(tomas, jose).
progenitor(tomas, isabel).
progenitor(jose, ana).
progenitor(jose, patricia).
progenitor(patricia, jaime).

% a) es_madre(X) :- X es madre si X es mujer y progenitora de alguien.
es_madre(X) :- mujer(X), progenitor(X, _).