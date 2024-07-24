extends Area2D

func _process(delta):
	if Input.is_action_just_pressed("P1_up"):
		position.y -= 20
