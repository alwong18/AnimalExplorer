extends Area2D


func _on_body_entered(body):
	print("entered portal")
	Events.level_completed.emit()
