extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_kelas_1_pressed():
	SceneTransition.change_scene("res://story 1-1.tscn")


func _on_kelas_2_pressed():
	SceneTransition.change_scene("res://story 2-1.tscn")


func _on_kelas_3_pressed():
	SceneTransition.change_scene("res://story 3-1.tscn")


func _on_kelas_1_mouse_entered():
	$click.play()


func _on_kelas_2_mouse_entered():
	$click.play()


func _on_kelas_3_mouse_entered():
	$click.play()
