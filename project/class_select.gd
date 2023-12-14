extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_kelas_1_pressed():
	get_tree().change_scene_to_file("res://game_over_1.tscn")


func _on_kelas_2_pressed():
	get_tree().change_scene_to_file("res://game_over_1.tscn")


func _on_kelas_3_pressed():
	get_tree().change_scene_to_file("res://stage_select_class_3.tscn")
