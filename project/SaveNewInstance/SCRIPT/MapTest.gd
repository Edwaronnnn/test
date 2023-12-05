extends Node2D
#Now let take a look at how to save the scene 

func _ready():
	pass

func _physics_process(delta):
	#in lines 8-14 is the script for add new instance
	if Input.is_action_just_pressed("CLICK_RIGHT"):
		var scene = load("res://SCENE/Block.tscn")
		var player = scene.instance()
		player.position = get_global_mouse_position()
		#This is the way were my "player" will be add to the scene
		$BLOCKS.add_child(player)
		#And one of the most important part is this line if you dont set player.set_owner(self) to be his owner this new instance will not be save
		player.set_owner(self)
		
	if Input.is_action_just_pressed("CLICK_LEFT"):
		$Block.position = get_global_mouse_position()
		
	if Input.is_action_just_pressed("KEY_S"):
		save_scene_tree()
		print_tree_pretty()
#This function is for save the scene 
func save_scene_tree():
	var file_path = "user://saved_scene.tscn"
	var resource = get_tree().get_current_scene()
	var packed_scene = PackedScene.new()
	packed_scene.pack(resource)
	ResourceSaver.save(file_path, packed_scene)



#Just a load directly to the scene with button maybe i will need some time in future
#func load_scene():
#	var scene_tree = get_tree()
#	var path = "res://SAVE/saved_scene.tscn"
#	scene_tree.change_scene(path)


#This function is for save the scene "same" but i used this when i press the button
func _on_Button_pressed():
	var file_path = "user://saved_scene.tscn"
	var resource = get_tree().get_current_scene()
	var packed_scene = PackedScene.new()
	packed_scene.pack(resource)
	ResourceSaver.save(file_path, packed_scene)
	get_tree().change_scene("res://SCENE/MainMenu.tscn")
