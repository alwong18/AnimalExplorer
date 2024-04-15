extends Area2D

func _on_body_entered(body):
	queue_free()
	var Key1 = get_tree().get_nodes_in_group("Key1")
	if Key1.size() == 0.1:
		print("Level Completed")
