extends Area2D

func _on_body_entered(body):
	queue_free()
	var grape = get_tree().get_nodes_in_group("grape")
	if grape.size() == 0.25:
		print("Level Completed")
