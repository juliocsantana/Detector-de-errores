
%	Sintomas de falla en compresor
error(F):- problemade(F,'no_enfria'),
	    problemade(F,'ningun_sonido'),
	    problemade(F,'compresor_defectuoso').

%	Sintomas de falla por mantenimiento

error(F):- problemade(F,'no_enfria'),
	    problemade(F,'falta_gas').


%	Sintomas de falla de conexion electrica

error(F):- problemade(F,'no_enciende'),
	    problemade(F,'conexiones_electricas_inadecuadas').

%	Problemas
sintoma(X):-problemade(X,Z),write(Z),nl,fail.

%	Soluciones
solucion(P):-soluciones(S,P),write(S),nl,fail.
