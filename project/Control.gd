extends Control






func _on_play_pressed():
	get_tree().change_scene_to_file("res://assets/pilih_kelas.tscn")


func _on_option_pressed():
	get_tree().change_scene_to_file("res://scenes/audio.tscn")


func _on_quit_pressed():
	get_tree().quit() # Replace with function body.


func _on_play_mouse_entered():
	$click.play()


func _on_option_gui_input(event):
	$click.play()


func _on_quit_mouse_entered():
	$click.play()
