extends MarginContainer

func _on_start_pressed():
	await LevelTransition.fade_to_black()
	get_tree().change_scene_to_file("res://Scenes/level_one.tscn")
	LevelTransition.fade_from_black()
	hide()

func _on_home_pressed():
	get_tree().quit()
	hide()
