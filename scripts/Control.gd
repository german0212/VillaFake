extends Control

var numero_dialogo = 0
var velocidad = 0.2
var control = false
var macro = false
var tween = create_tween()
@onready var texto = $RichTextLabel

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(false)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("tecla_space"):
		numero_dialogo += 1
		ingresar_dialogo()
		set_process(false)

func ingresar_dialogo():
	var tween = create_tween()
	if numero_dialogo < Global.dialogo_objeto.size():
		texto.text = Global.dialogo_objeto[numero_dialogo]
		texto.visible_ratio = 0.0
		var duracion = velocidad * Global.dialogo_objeto[numero_dialogo].length()
		tween.tween_property(texto, "visible_ratio", 1.00, velocidad * duracion)
		tween.tween_callback(_final)
	else:
		control = false
		$"../../CharacterBody2D".mover = true
		$"../../CharacterBody2D".objeto = false
		$"..".visible = false
		numero_dialogo = 0

func _final():
	set_process(true)
	
