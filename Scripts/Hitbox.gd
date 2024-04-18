extends Area2D

class_name Player

func _on_body_entered(body):
	if body is Player:
		get_tree().reload_current_scene()
