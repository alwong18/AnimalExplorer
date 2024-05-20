extends Node
@onready var fox = $Fox
@onready var king = $King

func _ready():
	king.show()
	king.play("King")
	await king.animation_finished
	king.hide()
	await get_tree().create_timer(1.0).timeout
	fox.show()
	fox.play("Fox")
	await fox.animation_finished
	get_tree().change_scene_to_file("res://Scenes/start_menu.tscn")
