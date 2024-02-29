extends StaticBody2D

@onready var sprite_2d = $Sprite2D
@onready var global_vars = get_node("/root/Global")

@export var current_texture = load("res://Assets/platePLACEHOLDER.png")


# Hardcode variants
@onready var SwitchButton = $"."
@onready var SwitchButton2 = $"../SwitchButton2"
# 3 and 4 coming soon
@onready var switchLocks = [false, false, false, false]


func _ready():
	sprite_2d.texture = load("res://Assets/platePLACEHOLDER.png")

func _process(delta):
	if (global_vars.changeTexture == true):
		#Hardcode
		if ("SwitchButton" == global_vars.spriteName && (switchLocks[0] != true)):
			#print("1")
			global_vars.requirementCount = global_vars.requirementCount + 1
			SwitchButton.get_node("Sprite2D").texture = load("res://Assets/ExitPLACEHOLDER.png")
			switchLocks[0] = true
		elif ("SwitchButton2" == global_vars.spriteName && (switchLocks[1] != true)):
			#print("2")
			global_vars.requirementCount = global_vars.requirementCount + 1
			SwitchButton2.get_node("Sprite2D").texture = load("res://Assets/ExitPLACEHOLDER.png")
			switchLocks[1] = true
		elif ("SwitchButton3" == global_vars.spriteName && (switchLocks[2] != true)):
			#print("3")
			global_vars.requirementCount = global_vars.requirementCount + 1
			switchLocks[2] = true
			pass
		elif ("SwitchButton4" == global_vars.spriteName && (switchLocks[3] != true)):
			#print("4")
			global_vars.requirementCount = global_vars.requirementCount + 1
			switchLocks[3] = true
			pass
		global_vars.changeTexture = false
		global_vars.spriteName = ""
