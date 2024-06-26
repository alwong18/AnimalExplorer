extends CharacterBody2D

var direction = Vector2.RIGHT

@onready var ledgeCheckR: =  $LedgeCheckR
@onready var ledgeCheckL: =  $LedgeCheckL
@onready var sprite: = $AnimatedSprite2D

func _physics_process(delta):
	var found_wall = is_on_wall()
		
	if found_wall:
		direction *= -1
		
	sprite.flip_h = direction.x > 0
	
	velocity = direction * 25
	move_and_slide()
	
