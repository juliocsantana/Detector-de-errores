problema('compresor').
problema('conexion').
problema('mantenimiento').
problemade(compresor,'no_enfria').
problemade(compresor,'ningun_sonido').
problemade(compresor,'compresor_defectuoso').

problemade(mantenimiento,'no_enfria').
problemade(mantenimiento,'falta_gas').

problemade(conexión,'no_enciende').
problemade(conexión,'conexiones_electricas_inadecuadas').



soluciones('encontrar_fuga_y_soldar','compresor').
soluciones('checar_cableado','compresor').
soluciones('verificar_termostato','compresor').
soluciones('verificar_capacitor','compresor').
soluciones('verificar_resistencias_de_bobinas','compresor').

soluciones('hacer_limpieza','mantenimiento').
soluciones('recargar_gas','mantenimiento').
soluciones('encontrar_fuga_y_soldar','mantenimiento').

soluciones('revisar_enchufe','conexion').
soluciones('revisar_voltaje','conexion').
soluciones('verificar_medidas_de_frio_y_calor','conexion').


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
