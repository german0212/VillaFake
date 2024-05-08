extends CharacterBody2D

const VELOCIDAD = 150
@onready var player = $".."
@onready var animacion = $AnimatedSprite2D

var mover = true
var objeto = false

func _physics_process(delta):
	if mover == true:
		#if Input.is_action_pressed("tecla_space"):
		if objeto == true:
			$"../Macro".visible = true
			Global._dialog()
			$"../Macro/Control".ingresar_dialogo()
			mover = false
		
		if Input.is_action_pressed("IZQUIERDA"):
			player.position.x -=VELOCIDAD * delta
			animacion.play("iqda")
		elif Input.is_action_pressed("DERECHA"):
			player.position.x +=VELOCIDAD * delta
			animacion.play("dcha")
		elif Input.is_action_pressed("ARRIBA"):
			player.position.y -=VELOCIDAD * delta	
			animacion.play("arriba")
		elif Input.is_action_pressed("ABAJO"):
			player.position.y +=VELOCIDAD * delta
			animacion.play("abajo")
		else:
			animacion.stop()
		move_and_slide()

func _on_obj_area_entered(area):
	$"../Macro/Control/Label".text = str(area.name)
	if area.is_in_group("objeto"):
		Global.nombre_objeto = area.name
		objeto = true

func _on_obj_area_exited(area):
	if area.is_in_group("objeto"):
		objeto = false
