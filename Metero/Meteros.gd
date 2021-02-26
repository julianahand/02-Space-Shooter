extends Node2D

var max_meteros = 3
var Metero = load("res://Metero/Metero.tscn")

func _ready():
	randomize()

func _physics_process(_delta):
	if get_child_count() < max_meteros:
		if randf() < 0.05:
			var metero = Metero.instance()
			metero.position.y = -100
			metero.position.x = randi()%1024
			add_child(metero)
