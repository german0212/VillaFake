extends Node

var nombre_objeto
@onready var rich_text_label = $RichTextLabel
var dialogo_objeto = []

func _dialog():
	match nombre_objeto:
		"television":
			dialogo_objeto = ["[color=blue]Vas a ver una serie de anuncios y tienes que establecer tu opinion sobre ellos.[/color]",
							"[color=blue][img=6*10]res://assets/fake/Captura de pantalla 2024-03-23 183911.png[/img]\nEjercicio 1\n¿La publicidad es engañosa? Justifica la respuesta. ¿Qué repercusiones puede tener?[/color]",
							"[color=blue][img=6*10]res://assets/fake/media-markt-dia-sin-iva.jpg[/img]\nEjercicio 2\n¿La publicidad es engañosa? Justifica la respuesta. ¿Qué repercusiones puede tener?[/color]"]
							
		"abuela":
			dialogo_objeto = ["[color=blue]Hola nieto, soy tu abuela Rosa, mira me han llegado unos mensajes al Whatsapp. Es increible lo que esta pasando en el mundo.[/color]",
							"[color=blue][img=6*10]res://assets/fake/whatsapp-bulo.jpg[/img]\nEjercicio 1\n¿Este mensaje es de una fuente fiable, es real y veridico? Justifica la respuesta.[/color]",
							"[color=blue][img=6*10]res://assets/fake/photo_2024-03-23_13-44-27 (2).jpg[/img]\nEjercicio 2\n¿Este mensaje es de una fuente fiable, es real y veridico? Justifica la respuesta.\n\n¿Como ayudarias a tu abuela para que la proxima vez no crea todo lo que le envian? Piensa que las personas mayores no tienen los mismos conocimientos que los jovenes en cuanto a tecnologia[/color]"]
							
		"abuelo":
			dialogo_objeto = ["[color=blue]Hola, nieto, que tal estas, soy tu abuelo Fernando, me han llegado unos mensajes de texto al telefono y me gustaria que me ayudaras porque en uno de ellos dicen que he ganado un sorteo y he pinchado en el enlace y he puesto mis datos[/color]",
							"[color=blue][img=6*10]res://assets/fake/abu1.png[/img]\nEjercicio 1\n¿Este mensaje es de una fuente fiable, es real y veridico? Justifica la respuesta.[/color]",
							"[color=blue][img=6*10]res://assets/fake/abu2.png[/img]\nEjercicio 2\n¿Este mensaje es de una fuente fiable, es real y veridico? Justifica la respuesta.\n\n¿Por que es peligroso que tu abuelo pinche en enlaces fraudulentos?[/color]"]
							
		"periodico":
			dialogo_objeto = ["[color=blue]Busca informacion en fuentes de verificacion de Internet sobre si las siguientes noticias son veridicas o no.[/color]",
							"[color=blue][img=6*10]res://assets/fake/prensa7.png[/img]\nEjercicio 1\n¿Noticia real o no? Justifica tu respuesta.[/color]",
							"[color=blue][img=6*10]res://assets/fake/prensa11m.jpeg[/img]\nEjercicio 2\n¿Noticia real o no? Justifica tu respuesta.[/color]"]
		"juana":
			dialogo_objeto =  ["[color=blue]Hola, soy Juana puede que haya piedras encima de la bandera. Vi a niños jugar en esta charca y estaban levantando piedras y escondiendo algo. Creo que puede ser lo que buscas.[/color]"]
							
		"raul":
			dialogo_objeto =  ["[color=blue]Hola, soy Raul y creo que deberias acercarte al agua, ya que vi algo rojo cerca de un lugar con agua y seguramente puede que sea la bandera que estas buscando.[/color]"]
							
		"maria":
			dialogo_objeto = ["[color=blue]Hola, soy Maria yo si fuera tu, miraria en la cueva[/color]"]
		
		"cartel1":
			dialogo_objeto = ["[color=blue]Tienes que subirte en alto para encontrar la bandera[/color]"]
							
		"cartel2":
			dialogo_objeto = ["[color=blue]Busca en algun tronco abierto ;)[/color]"]
							
		"flag":
			dialogo_objeto = ["[color=blue]ENHORABUENA :) TIENES LA FLAG[/color]\n[img=6*10]res://assets/fake/395841.png[/img]",
							"[color=blue]codigo para conseguir un punto extra: p{==gW(yb4A,Dyc[/color]",
							"[color=blue]¿Que conclusiones sacas del nivel? ¿Puedes creer a todo el mundo lo que te dice?\n\nPuedes abandonar el nivel[/color]"]
		"mario":
			dialogo_objeto = ["[color=blue]Hola, soy tu compañero de clase Mario, he visto un video terrible que dice que el cambio climatico no existe y es un imvento para quitarnos nuestras libertades, mira\nAdemas, ha dicho mi youtuber favorito que si no entiende eso del cambio climatico y yo me lo creo. Es alucinante como nos engañan. [/color]",
							"[img=6*10]res://assets/fake/maxresdefault.jpg[/img]\n[img=6*10]res://assets/fake/cons8.jpg[/img]",
							"[color=blue]Busca informacion acerca de este tema ¿Estas de acuerdo con Mario o no? Justificalo.[/color]"]
							
		"german":
			dialogo_objeto = ["[color=blue]Hola, soy tu compañero de clase German, desde que existe el 5G hay un mayor numero de enfermedades, nos estan intoxicando y tengo pruebas que lo demuestran, os las enseño. [/color]",
							"[img=6*10]res://assets/fake/cons4.png[/img]\n[img=6*10]res://assets/fake/cons5.png[/img]\n[img=6*10]res://assets/fake/cons10.png[/img]\n[img=6*10]res://assets/fake/TweetPalomasMuertas.png[/img]",
							"[color=blue]Busca informacion acerca de este tema ¿Estas de acuerdo con German o no? Justifica la respuesta.[/color]"]
							
		"isabel":
			dialogo_objeto =["[color=blue]Hola, soy tu compañera de clase Isabel, he visto estas fotografias de Donald Trump con personas de raza negra, luego dicen que esta en contra de ellas. Tiene que votarlo la comunidad negra de Estados Unidos porque los quiere. [/color]",
							"[img=6*10]res://assets/fake/cons2.png[/img]\n[img=6*10]res://assets/fake/cons3.png[/img]",
							"[color=blue]Busca informacion acerca de estas fotos ¿Son reales? ¿Que objetivo se persigue con ellas? [/color]"]
							
		"laura":
			dialogo_objeto = ["[color=blue]Hola, soy tu compañera de clase Laura, creo que el cancer se podria curar con remedios naturales en lugar de usar quimioterapia o radioterapia que son perjudiciales para la salud. Hay que actuar ya.[/color]",
							"[img=6*10]res://assets/fake/cons6.jpg[/img]\n[img=6*10]res://assets/fake/cancer1.png[/img]\n[img=6*10]res://assets/fake/cancer2.png[/img]",
							"[color=blue]Busca informacion acerca de este tema ¿Estas de acuerdo con Laura o no? Justificalo.[/color]"]
			
		"ordenador":
			dialogo_objeto = ["[color=blue]Vamos a ver los correos electronicos de hoy. Hay 2 correos nuevos en la bandeja de entrada.[/color]",
							"[img=6*10]res://assets/fake/correo-electronico-falso-paypal.jpg[/img]\n[color=blue]¿Es un correo veridico y por qué?[/color]",
							"[img=6*10]res://assets/fake/correo3.png[/img]\n[color=blue]¿Es un correo veridico y por qué?[/color]",
							"[color=blue]Expresa tus conclusiones finales sobre estas actuaciones. ¿Cuales son las consecuencias si se pincha en uno de los enlaces y se entrega informacion sensible, como puede ser la contraseña del banco o tu numero de cuenta corriente?[/color]\n"]
							
		"telefono":
			dialogo_objeto = ["[color=blue]Llamada entrante 1:[/color]\n[img=6*10]res://assets/fake/blog-41.jpg[/img]\n[color=blue]Te solicitan datos de la empresa, numero de cuenta corriente y claves bancarias porque hay un problema con el acceso. Te dicen que son del banco. ¿Le das la informacion solicitada?\nSea cual sea tu respuesta, justificala con argumentos.[/color]",
							"[color=blue]Llamada entrante 2:[/color]\n[img=6*10]res://assets/fake/tlf.png[/img]\n[color=blue]Parece ser un directivo de tu empresa, que te dice que le tienes que facilitar el usuario y contraseña de tu ordenador de la oficina, debido a que hay un problema grave de seguridad. ¿Qué haces y por que?[/color]"]
		
		"vendedor1":
			dialogo_objeto = ["[color=blue]Hola amigo, te voy a vender este caldo de pollo, tiene unas gambas riquisimas que vienen exclusivas de Huelva[/color]\n[img=6*10]res://assets/fake/super4.jpg[/img]\n[color=blue]¿Que te parece el etiquetado y la publicidad del producto? Justifica la respuesta.[/color]"]
							
		"vendedor2":
			dialogo_objeto = ["[color=blue]Hola, tengo un caldo de pollo de corral exquisito, mira[/color]\n[img=6*10]res://assets/fake/Sopa-con-pollo-de-corral.jpg[/img]\n[color=blue]¿Que te parece el etiquetado de este producto? Justificalo.[/color]"]
							
		"producto1":
			dialogo_objeto = ["[img=6*10]res://assets/fake/publi3.png[/img]\n[color=blue]¿Que te parece la puntuacion NutriScore? ¿Se correspomde con la realidad? Justifica la respuesta.[/color]"]
			
		"producto2":
			dialogo_objeto = ["[img=6*10]res://assets/fake/super6.jpg[/img]\n[color=blue]¿Que te parece la oferta? Justifica la respuesta.[/color]"]
							

							
	
