extends CharacterBody2D


var direction = Vector2.RIGHT

@onready var animated_sprite_2d = $AnimatedSprite2D


func _physics_process(delta):
	var found_wall = is_on_wall()
	
	if found_wall:
		direction *= -1
		
	animated_sprite_2d.flip_h = direction.x > 0
	
	velocity = direction * 25
	move_and_slide()
