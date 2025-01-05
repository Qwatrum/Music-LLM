extends Control

func _on_credits_pressed():
	get_tree().change_scene_to_file("res://scenes/credits.tscn")

func _on_instructions_pressed():
	get_tree().change_scene_to_file("res://scenes/instructions.tscn")

func _on_start_pressed():
	get_tree().change_scene_to_file("res://scenes/main_screen.tscn")

func _process(delta):
	if Input.is_action_just_pressed("dict_add"):
		get_tree().change_scene_to_file("res://scenes/dictonary_creator.tscn")
