
%	Sintomas de falla en compresor
sintom(F):- problemade(F,'no_enfria'),
	    problemade(F,'ningun_sonido'),
	    problemade(F,'compresor_defectuoso').

%	Sintomas de falla por mantenimiento

sintom(F):- problemade(F,'no_enfria'),
	    problemade(F,'falta_gas').


%	Sintomas de falla de conexion electrica

sintom(F):- problemade(F,'no_enciende'),
	    problemade(F,'conexiones_electricas_inadecuadas').

%	Problemas
sintoma(X):-problemade(X,Z),write(Z),nl,fail.

%	Soluciones
solucion(P):-soluciones(S,P),write(S),nl,fail.
