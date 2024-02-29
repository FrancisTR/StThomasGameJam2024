extends Node2D

@onready var global_vars = get_node("/root/Global")


# How many targets does the player need to hit?
func _ready():
	global_vars.requirements = 2
	pass
