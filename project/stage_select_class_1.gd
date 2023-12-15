extends Node2D








func _on_stage_11_pressed():
	SceneTransition.change_scene("res://scenes/stage 1- 1.tscn") # Replace with function body.


func _on_stage_12_pressed():
	SceneTransition.change_scene("res://scenes/stage 1- 2.tscn")


func _on_stage_13_pressed():
	SceneTransition.change_scene("res://scenes/kelas 1-3.tscn")


func _on_stage_11_mouse_entered():
	$click.play()


func _on_stage_12_mouse_entered():
	$click.play()


func _on_stage_13_mouse_entered():
	$click.play()


func _on_returnpilihkelas_pressed():
	SceneTransition.change_scene("res://assets/pilih_kelas.tscn")
