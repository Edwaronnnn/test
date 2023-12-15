extends Node2D


# Example code in another script (e.g., attached to a button)






func _on_return_pressed():
	SceneTransition.change_scene("res://scenes/control.tscn")



func _on_return_mouse_entered():
	$click.play()
