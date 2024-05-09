extends Node

var level_time = 0.0
var start_level_msc = 0.0 
@onready var level_time_label = $CanvasLayer/LevelTimeLabel
@onready var start_in = $CanvasLayer/StartIn
@onready var start_in_label = %StartInLabel
@onready var animation_player = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	#get_tree().paused = true
	start_level_msc = Time.get_ticks_msec()
	#Events.level_completed.connect(show_level_completed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	level_time= Time.get_ticks_msec() - start_level_msc
	level_time_label.text = str(level_time/ 1000.0)
