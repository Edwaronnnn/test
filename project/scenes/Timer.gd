extends Timer


# Called when the node enters the scene tree for the first time.
func time_left_to_live():
	var time_left = countdown_timer.timer_left
	var minute = floor(time_left / 60)
	var second = int(time_left) % 60
	return [minute, second]
	
func _process(delta):
	timer_label.text = "%02d:%02d" % time_left_to_live()
