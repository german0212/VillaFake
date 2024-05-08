extends Node2D

func _ready():
	$Player.position = get_tree().get_nodes_in_group("main")[0].ubicacion

func _on_casa_area_entered(area):
	if area.is_in_group("player"):
		get_tree().get_nodes_in_group("main")[0].sig_nivel = "casa"
		get_tree().get_nodes_in_group("main")[0]._verif_nivel()
		get_tree().get_nodes_in_group("mapa")[0].queue_free()

func _on_mercado_area_entered(area):
	if area.is_in_group("player"):
		get_tree().get_nodes_in_group("main")[0].sig_nivel = "mercado"
		get_tree().get_nodes_in_group("main")[0]._verif_nivel()
		get_tree().get_nodes_in_group("mapa")[0].queue_free()

func _on_parque_area_entered(area):
	if area.is_in_group("player"):
		get_tree().get_nodes_in_group("main")[0].sig_nivel = "parque"
		get_tree().get_nodes_in_group("main")[0]._verif_nivel()
		get_tree().get_nodes_in_group("mapa")[0].queue_free()

func _on_oficina_area_entered(area):
	if area.is_in_group("player"):
		get_tree().get_nodes_in_group("main")[0].sig_nivel = "oficina"
		get_tree().get_nodes_in_group("main")[0]._verif_nivel()
		get_tree().get_nodes_in_group("mapa")[0].queue_free()

func _on_escuela_area_entered(area):
	if area.is_in_group("player"):
		get_tree().get_nodes_in_group("main")[0].sig_nivel = "escuela"
		get_tree().get_nodes_in_group("main")[0]._verif_nivel()
		get_tree().get_nodes_in_group("mapa")[0].queue_free()
