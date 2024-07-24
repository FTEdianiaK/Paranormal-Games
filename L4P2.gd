extends Area2D

export var speed = 300
signal hit

func _process(delta):
	var velocity2 = Vector2()
	if Input.is_action_pressed("P2_right"):
		velocity2.x += 1
	if Input.is_action_pressed("P2_left"):
		velocity2.x -= 1
	if Input.is_action_pressed("P2_down"):
		velocity2.y += 1
	if Input.is_action_pressed("P2_up"):
		velocity2.y -= 1
	if velocity2.length() > 0:
		velocity2 = velocity2.normalized() * speed
	position += velocity2 * delta

func _on_P2_body_entered(body):
	emit_signal("hit")

