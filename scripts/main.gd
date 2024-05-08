extends Node2D

@onready var main = $"."
@onready var animacion = $AnimationPlayer
var ubicacion = Vector2(154,271)

var sig_nivel
var nuevo_nivel

var mapa = preload("res://escenas/mapa.tscn")
var casa = preload("res://escenas/casa.tscn")
var mercado = preload("res://escenas/mercado.tscn")
var oficina = preload("res://escenas/oficina.tscn")
var parque = preload("res://escenas/parque.tscn")
var escuela = preload("res://escenas/escuela.tscn")

func _ready():
	var nivel = mapa.instantiate()
	add_child(nivel)
	
func _verif_nivel():
	match sig_nivel:
		"casa":
			nuevo_nivel = casa
			animacion.play("entrar_casa")
		"mapa":
			nuevo_nivel = mapa
			animacion.play("salir")
		"escuela":
			nuevo_nivel = escuela
			animacion.play("entrar_escuela")
		"parque":
			nuevo_nivel = parque
			animacion.play("entrar_parque")
		"oficina":
			nuevo_nivel = oficina
			animacion.play("entrar_oficina")
		"mercado":
			nuevo_nivel = mercado
			animacion.play("entrar_mercado")

func _next_nivel():
	var nivel = nuevo_nivel.instantiate()
	get_tree().get_nodes_in_group("main")[0].call_deferred("add_child", nivel)

func _on_animation_player_animation_finished(anim_name):
	_next_nivel()
