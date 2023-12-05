extends Control

#This Func is for detecting the saved file you can use user:// for load the file from user
func _process(delta):
	var file = File.new()
	if file.file_exists("user://saved_scene.tscn"):
		$Button.text = "Load Save"
	else:
		$Button.text = "Create New Map"

#In this func we will load the file when I press enter
func _on_Button_pressed():
	var file = File.new()
	if file.file_exists("user://saved_scene.tscn"):
		get_tree().change_scene("user://saved_scene.tscn")
	else:
		get_tree().change_scene("res://SCENE/Map.tscn")

#This line is optional, is for deleting the old file if you want a new save
func _on_DeleteSave_pressed():
	var dir = Directory.new()
	if dir.file_exists("user://saved_scene.tscn"):
		dir.remove("user://saved_scene.tscn")
	else:
		print("no file avaible")
