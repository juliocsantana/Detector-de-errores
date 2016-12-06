problema('compresor').
problema('conexion').
problema('mantenimiento').

problemade('no_enfria',compresor).
problemade('ningun_sonido',compresor).
problemade('compresor_defectuoso',compresor).

problemade('no_enfria',mantenimiento).
problemade('falta_gas',mantenimiento).

problemade('no_enciende',conexion).
problemade('conexiones_electricas_inadecuadas',conexion).

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
