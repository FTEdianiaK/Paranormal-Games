extends Area2D

export var speed = 300
var cur1 = null
var done1 = null

func _ready():
	cur1 = "appear"
	done1 = "appeared"
	$Vanish1.start()
	$P1ani.set_animation("appear")
	$P1ani.set_frame(4)

func _on_Appear1_timeout():
	cur1 = "appear"
	$P1ani.play("appear")

func _on_Vanish1_timeout():
	cur1 = "vanish"
	$P1ani.play("vanish")

func _on_P1ani_animation_finished():
	if cur1 == "vanish":
		$Appear1.start()
		done1 = "vanished"
		cur1 = null
	if cur1 == "appear":
		$Vanish1.start()
		done1 = "appeared"
		cur1 = null

func _process(delta):
	var move1 = Vector2()
	if Input.is_action_pressed("P1_right"):
		move1.x += 1
	if Input.is_action_pressed("P1_left"):
		move1.x -= 1
	if move1.length() > 0:
		move1 = move1.normalized() * speed
	position += move1 * delta


func _on_P1_body_entered(body):
	if cur1 == "vanish":
		position.x -= 15
	if done1 == "appeared":
		position.x -= 15
	if cur1 == "appear":
		position.x -= 15
	else:
		pass
