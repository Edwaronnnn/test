extends Node2D


# Called when the node enters the scene tree for the first time.


func _on_button_pressed():
	SceneTransition.change_scene("res://stage_select_class_3.tscn")


func _on_button_2_pressed():
	SceneTransition.change_scene("res://scenes/control.tscn")
