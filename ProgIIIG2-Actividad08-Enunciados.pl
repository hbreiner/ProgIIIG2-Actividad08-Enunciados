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

% d) hermana_de(X, Y) :- X es hermana de Y si X es mujer, tienen el mismo padre o madre y son diferentes personas.
hermana_de(X, Y) :- mujer(X), progenitor(Z, X), progenitor(Z, Y), dif(X, Y).

% g) tia(X, Y) :- X es tía de Y si X es hermana de alguno de los progenitores de Y.
tia(X, Y) :- hermana_de(X, Z), progenitor(Z, Y).
