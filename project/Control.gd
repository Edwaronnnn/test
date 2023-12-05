extends Control




func _on_play_pressed():
	get_tree().change_scene_to_file("res://stage_select_class_3.tscn")


func _on_option_pressed():
	get_tree().change_scene_to_file("res://scenes/audio.tscn")


func _on_quit_pressed():
	get_tree().quit() # Replace with function body.
