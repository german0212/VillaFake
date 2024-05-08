extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_mapa_area_entered(area):
	if area.is_in_group("player"):
		get_tree().get_nodes_in_group("main")[0].sig_nivel = "mapa"
		get_tree().get_nodes_in_group("main")[0].ubicacion = Vector2(600,288)
		get_tree().get_nodes_in_group("main")[0]._verif_nivel()
		get_tree().get_nodes_in_group("escuela")[0].queue_free()
