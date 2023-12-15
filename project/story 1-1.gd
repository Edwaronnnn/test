extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	DialogueManager.show_example_dialogue_balloon(load("res://hint.dialogue"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	SceneTransition.change_scene("res://stage_select_class_1.tscn")


func _on_continue_mouse_entered():
	$click.play()
func _on_skip_pressed():
	SceneTransition.change_scene("res://stage_select_class_1.tscn")
