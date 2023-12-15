extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_stage_31_pressed():
	SceneTransition.change_scene("res://scenes/stage 3-1.tscn")


func _on_stage_32_pressed():
	SceneTransition.change_scene("res://scenes/stage 3-2.tscn")


func _on_stage_33_pressed():
	SceneTransition.change_scene("res://scenes/stage 3-3.tscn")
	



func _on_returnpilihkelas_pressed():
	SceneTransition.change_scene("res://assets/pilih_kelas.tscn")
