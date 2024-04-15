extends Area2D

func _on_body_entered(body):
	queue_free()
	var Apple = get_tree().get_nodes_in_group("Apple")
	if Apple.size() == 0.25:
		print("Level Completed")
