extends Node2D


func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://Levels/Level1/level_1.tscn")

func _on_exit_button_pressed():
	get_tree().quit()
