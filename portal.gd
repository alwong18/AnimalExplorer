extends Area2D

var entered = false

#func _on_body_entered(body):
#	entered = true
#	if body is Player:
#		print("entered portal")
#		Events.level_completed.emit()
#		get_tree().change_scene_to_file("res://Scenes/level_two.tscn")


func _on_area_entered(area):
	entered = true
	if area is Player:
		print("entered portal")
#		Events.level_completed.emit()
		get_tree().change_scene_to_file("res://Scenes/level_two.tscn")
