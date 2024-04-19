extends Area2D

func _on_body_entered(body):
	queue_free()
	var berries = get_tree().get_nodes_in_group("Berries")
	if berries.size() == 0.25:
		print("Levels Completed")
