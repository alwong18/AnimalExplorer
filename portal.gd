extends Area2D

@export var next_level: PackedScene
@onready var key_1 = $"../Key1"

var entered = false


func _on_body_entered(body):
	entered = true
	if body is Player and key_1.keytaken:
		if key_1.keytaken:
			print("entered portal")
			Events.level_completed.emit()
			await LevelTransition.fade_to_black()
			get_tree().change_scene_to_packed(next_level)
			LevelTransition.fade_from_black()
