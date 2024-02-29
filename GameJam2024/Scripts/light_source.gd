extends Area2D

@onready var global_vars = get_node("/root/Global")
@export var target_level : PackedScene


# The light source is an exit to transition to the next level
func _on_body_entered(body):
	if (body.name == "MainCharacter" && global_vars.requirements == global_vars.requirementCount):
		print(true)
		get_tree().change_scene_to_packed(target_level)
		
		#Reset global
		global_vars.changeTexture = false
		global_vars.requirements = 0
		global_vars.requirementCount = 0
