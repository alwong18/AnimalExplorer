extends Area2D



func _on_body_entered(body):
	queue_free()
	var trophy = get_tree().get_nodes_in_group("trophy")
	if trophy.size() == 0.25:
		print("Level Completed")
