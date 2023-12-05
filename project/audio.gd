extends AudioStreamPlayer

# Initial volume level (in dB)
var volume_level_db = 0.0

func _ready():
	# Set the initial volume when the scene is loaded
	volume_db = volume_level_db

func adjust_volume(value):
	# Adjust the volume within the desired range
	volume_level_db += value

	# Ensure the volume stays within the valid range
	if volume_level_db < -80.0:
		volume_level_db = -80.0
	elif volume_level_db > 0.0:
		volume_level_db = 0.0

	# Set the adjusted volume
	volume_db = volume_level_db

