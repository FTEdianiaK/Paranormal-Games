extends Area2D

func _process(delta):
	if Input.is_action_just_pressed("P2_up"):
		position.y -= 20
