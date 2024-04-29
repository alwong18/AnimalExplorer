extends Control

@onready var label = $Label
@onready var timer = $Timer

# Called when the node enters the scene tree for the first time.
func _ready():
	timer.start()
	
func time_left_to_live():
	var time_left = timer.time_left
	var minute = floor(time_left/60)
	var second = int(time_left) % 60
	return [minute, second]
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	label.text = "%02d:%02d" % time_left_to_live()
