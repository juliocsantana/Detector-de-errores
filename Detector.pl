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

solucion('encontrar_fuga_y_soldar','compresor').
solucion('checar_cableado','compresor').
solucion('verificar_termostato','compresor').
solucion('verificar_capacitor','compresor').
solucion('verificar_resistencias_de_bobinas','compresor').

solucion('hacer_limpieza','mantenimiento').
solucion('recargar_gas','mantenimiento').
solucion('encontrar_fuga_y_soldar','mantenimiento').

solucion('revisar_enchufe','conexion').
solucion('revisar_voltaje','conexion').
solucion('verificar_medidas_de_frio_y_calor','conexion').
