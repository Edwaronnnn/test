extends Node2D
@onready var stats = %stats
@onready var stats_2 = %stats2

# Called when the node enters the scene tree for the first time.
func _ready():
	stats = $stats
	stats.text =  "Chances Left:" + str(Autoscript.chancesleft)
	stats_2 = $stats2
	stats_2.text = "Time Left:" + str(Autoscript.timeleft)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	SceneTransition.change_scene("res://stage_select_class_2.tscn")
