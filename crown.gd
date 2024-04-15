extends Area2D


func _on_body_entered(body):
	queue_free()
	var crown = get_tree().get_nodes_in_group("crown")
	if crown.size() == 0.25:
		print("Level Completed")
