extends Position2D

var inside = []

func _process(_delta):
	inside = $Area2D.get_overlapping_areas()
	if !Input.is_action_pressed("left_click") and inside.empty() == false:
		get_parent().position = inside[0].global_position
