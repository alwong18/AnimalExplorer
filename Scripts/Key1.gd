extends Area2D

var keytaken = false

func _on_body_entered(body):
	if keytaken == false:
		keytaken == true
		#put signal emit here
		queue_free()
		print("key taken")
	var Key1 = get_tree().get_nodes_in_group("Key1")
