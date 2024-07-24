extends Area2D

export var speed = 300
var cur2 = null
var done2 = null

func _ready():
	cur2 = "appear"
	done2 = "appeared"
	$Vanish2.start()
	$P2ani.set_animation("appear")
	$P2ani.set_frame(4)

func _on_Appear2_timeout():
	cur2 = "appear"
	$P2ani.play("appear")

func _on_Vanish2_timeout():
	cur2 = "vanish"
	$P2ani.play("vanish")

func _on_P2ani_animation_finished():
	if cur2 == "vanish":
		$Appear2.start()
		done2 = "vanished"
		cur2 = null
	if cur2 == "appear":
		$Vanish2.start()
		done2 = "appeared"
		cur2 = null

func _process(delta):
	var move2 = Vector2()
	if Input.is_action_pressed("P2_right"):
		move2.x += 1
	if Input.is_action_pressed("P2_left"):
		move2.x -= 1
	if move2.length() > 0:
		move2 = move2.normalized() * speed
	position += move2 * delta


func _on_P2_body_entered(body):
	if cur2 == "vanish":
		position.x -= 15
	if done2 == "appeared":
		position.x -= 15
	if cur2 == "appear":
		position.x -= 15
	else:
		pass
