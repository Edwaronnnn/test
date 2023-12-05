extends Node2D

@onready var countdown_timer: Timer = $Timer
@onready var timer_label: Label = $"Timer Label"


# Called when the node enters the scene tree for the first time.
func _ready():
	countdown_timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func time_left_to_live():
	var time_left = countdown_timer.time_left
	var minute = floor(time_left / 60)
	var second = int(time_left) % 60
	return [minute, second]
	
func _process(delta):
	timer_label.text = "%02d:%02d" % time_left_to_live()




func _on_timer_timeout():
	get_tree().change_scene_to_file("res://game_over_1.tscn")
