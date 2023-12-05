extends HSlider

@export
var bus_name : String

var bus_index: int

var config : ConfigFile = ConfigFile.new()

# Called when the node enters the scene tree for the first time.
func _ready() -> void: 
	bus_index = AudioServer.get_bus_index(bus_name)
	value_changed.connect(_on_value_changed)
	
	# Load the saved volume from the configuration file
	if config.load("user://config.cfg") == OK:
		if config.has_section("sound"):
			if config.has_section_key("sound", "volume"):
				value = config.get_value("sound", "volume")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(
		bus_index,
		linear_to_db(value)
	)
	
	# Save the volume to the configuration file
	config.set_value("sound", "volume", value)
	config.save("user://config.cfg")


