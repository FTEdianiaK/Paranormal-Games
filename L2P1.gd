extends Area2D

export var speed = 300

func _process(delta):
	var velocity1 = Vector2()
	if Input.is_action_pressed("P1_right"):
		velocity1.x += 1
	if Input.is_action_pressed("P1_left"):
		velocity1.x -= 1
	if Input.is_action_pressed("P1_down"):
		velocity1.y += 1
	if Input.is_action_pressed("P1_up"):
		velocity1.y -= 1
	if velocity1.length() > 0:
		velocity1 = velocity1.normalized() * speed
	position += velocity1 * delta
