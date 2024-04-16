extends CharacterBody2D

var direction = Vector2.RIGHT

@onready var ledgeCheckR: =  $LedgeCheckR
@onready var ledgeCheckL: =  $LedgeCheckL
@onready var sprite: = $AnimatedSprite2D

func _physics_process(delta):
	var found_wall = is_on_wall()
	var found_ledge = not ledgeCheckR.is_colliding() or not ledgeCheckL.is_colliding()
		
	if found_wall or found_ledge:
		direction *= -1
		
	sprite.flip_h = direction.x > 0
	
	velocity = direction * 25
	move_and_slide()
	
