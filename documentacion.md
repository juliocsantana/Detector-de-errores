#Tecnológico Nacional de México#
>###Instituto Tecnológico de mexicali###
>Julio Cesar Santana Suarez
>
>Ing.Sistemas computacionales
>
>Programación lógica y funcional
>
>Jorge Antonio Atempa Camacho
>
> ![](http://image.slidesharecdn.com/programacionlogica-120606140044-phpapp02/95/programacion-logica-1-728.jpg?cb=1338991506)

###Programacion lógica###

La programación lógica, junto con la funcional, forma parte de lo que se conoce
como programación declarativa. En los lenguajes tradicionales, la
programación consiste en indicar cómo resolver un problema mediante sentencias;
en la programación lógica, se trabaja de una forma descriptiva, estableciendo
relaciones entre entidades, indicando no cómo, sino qué hacer.

    La idea esencial de la Programación Lógica es:

	Programa= lógica + control

	Lógica (programador): hechos y reglas para representar conocimiento

	Control (interprete): deducción lógica para dar respuestas (soluciones)


La programación lógica: construye una base de conocimientos mediante reglas y hechos:

* **Regla**: implicación o inferencia lógica que deduce nuevo conocimiento, la regla permite definir nuevas relaciones apartir de otras ya existentes.

* **Hecho**: declaración, cláusula o proposición cierta o falsa, el hecho establece una relación entre objetos y es la forma más sencilla de sentencia.

###Aplicación de la programación lógica###
* Sistemas Expertos , donde un Sistema de información mita las recomendaciones de un experto sobre algún dominio de conocimiento.

* Demostración automática de teoremas, donde un programa genera nuevos teoremas sobre una teoría existente.

* Reconocimiento de lenguaje natural, donde un programa es capaz de comprender (con limitaciones) la información contenida en una expresión lingüística humana.

* Inteligencia artificial.

* Sistemas de información.

###Problematica###
Se desea tener un sistema experto que facilite la reparación de equipos de aire acondicionado. Donde podamos encontrar el problema que tiene algún equipo y conforme al problema que tenga nos diga las posibles soluciones de dicho problema.

###Justificación###
Este sistema experto para equipo de aire acondicionado se va desarrollar para conocer el problema que tenga uno de estos equipos cuando se presente alguna falla, además de que nos dará alguna serie de posibles soluciones dependiendo del problema que tenga nuestro equipo.
Uno de los principales propósitos de este sistema, es que las personas que no tienen conocimiento en la reparación o servicios de refrigeración, logren tener un poco de conocimiento con este sistema, y así al momento de contratar a un técnico, esté no los estafe inventándole problemas que no tiene el equipo y así cobrar más de lo debido.
Con este sistema experto las personas podrán conocer el verdadero problema que tiene dependiendo de la falla que se esté presentando, y así evitar que se aprovechen de ellas recibiendo un buen servicio.

###Desarrollo###

####Hechos####

Definiremos los posibles problemas que se pueden llegar a ocasionar.

	problema('compresor').
	problema('conexion').
	problema('mantenimiento').

Aqui tenemos los problemas de compresor.

    problemade(compresor,'ningun_sonido').

Se muestra un problema de mantenimiento:

    problemade(mantenimiento,'no_enfria').


Aqui tenemos un problema de conexion:

    problemade(conexión,'conexiones_electricas_inadecuadas').



Posibles soluciones a los problemas de compresor:

	soluciones('checar_cableado','compresor').
	soluciones('verificar_termostato','compresor').

De igual manera algunas posibles soluciones a los problemas por mantenimiento:

	soluciones('hacer_limpieza','mantenimiento').
	soluciones('recargar_gas','mantenimiento').

Por último, otras soluciones por fallos de conexion:

	soluciones('revisar_enchufe','conexion').
	soluciones('revisar_voltaje','conexion').

####Reglas####

En las primeras tres reglas contamos con una variable **F** de nuestra cabeza llamada **error**, y lo que sigue después de **:-** es el cuerpo.
Se puede entender que el **error** es la cabeza y el **problemade** el cuerpo, el error es originado por algún problema.
Lo que nos va a originar al momento de hacer una consulta va ser un mensaje, nos mostrara un mensaje que se encuentre dentro de la variable **F**.
Por ejemplo en la primera regla tenemos como síntoma que **no_enfria** entonces nos va mostrar el error que origina ese problema.

    error(F):-problemade(F,'no_enfria') , problemade(F,'ningun_sonido'), problemade(F,'compresor_defectuoso'). 

	error(F):- problemade(F,'no_enfria'),
	    problemade(F,'falta_gas').

	error(F):- problemade(F,'no_enciende'),
	    problemade(F,'conexiones_electricas_inadecuadas').
En la cuarta regla tendremos una variable **X** de nuestra cabeza **síntoma** y en nuestro cuerpo tenemos los problemas.
**X** debe estar relacionado con **Z**, dependiendo un síntoma nos va salir los posibles problemas.
Como por ejemplo si le ponemos síntoma de **compresor** nos saldría todos los problemas que tiene un compresor al momento de que el equipo presente una falla.
La sentencia **Write** va escribir todo lo que contenga **Z** hasta que sea **false**.

	sintoma(X):-problemade(X,Z),write(Z),nl,fail.

En la última regla se va almacenar la solución a los posibles problemas, la cabeza **solución** cuenta con una variable llamada **P**, el cuerpo contiene otra variable llamada **S**, donde nos va mostrar las soluciones a los posibles problemas.
**Write** nos va desplegar las posibles soluciones a un determinado problema hasta que la condición sea **false**.

	solucion(P):-soluciones(S,P),write(S),nl,fail.


###Resultados###
En la primera consulta vamos a preguntar de que tipo es el error del problema que se presenta.

	1 ?- problemade(F,no_enfria).
	F = compresor ;
	F = mantenimiento.

En la segunda preguntamos cuales son los síntomas que puede presentar el compresor.

	2 ?- sintoma(compresor).
	no_enfria
	ningun_sonido
	compresor_defectuoso
	false.

Como tercera consulta lo que haremos es preguntarle que nos muestre las posibles soluciones si se presentara algún problema en el compresor.

	3 ?- solucion(compresor).
	encontrar_fuga_y_soldar
	checar_cableado
	verificar_termostato
	verificar_capacitor
	verificar_resistencias_de_bobinas
	false.


###Conclusión###
En conclusión este sistema experto puede ser útil y puede beneficiar a las personas, ya que teniendo una aplicación que nos diga la posible solución a algún problema de nuestro equipo de aire acondicionado sabremos que al contratar a una persona que nos solucione ese error, no nos podrá inventar problemas que no tiene nuestro equipo, ya que la aplicación se acercara al error que presente alguna determinada falla.

###Referencias###

	http://joedicastro.com/pages/markdown.html

	https://www.ecured.cu/Programaci%C3%B3n_l%C3%B3gica

	http://blog.koalite.com/2013/08/que-es-la-programacion-logica/

	http://programacion-programacionlogica.blogspot.mx/





