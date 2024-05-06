extends Area2D

@export var next_level: PackedScene

var entered = false

func _process(delta):
	if entered == true:
		if Input.is_action_just_pressed("shoot"):
			get_tree().change_scene_to_file("res://Scenes/level_two.tscn")

func _on_body_entered(body):
	entered = true
	if body is Player:
		print("entered portal")
		Events.level_completed.emit()
		get_tree().change_scene_to_file("res://Scenes/level_two.tscn")
