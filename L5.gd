extends Node

var won = null

func _ready():
	$"Container/tie".get_stream().loop = false
	$"Container/P1w".get_stream().loop = false
	$"Container/P2w".get_stream().loop = false
	$P1.hide()
	$P2.hide()
	$Tie.hide()
	var s1 = Global.scoreP1
	var s2 = Global.scoreP2
	if s1 > s2:
		$"Container/P1w".play()
		$P1.show()
		won = "P1"
		$Timer.start()
	if s2 > s1:
		$"Container/P2w".play()
		$P2.show()
		won = "P2"
		$Timer.start()
	if s1 == s2:
		$"Container/tie".play()
		$Tie.show()
		won = false
		$Timer.start()

func _on_Timer_timeout():
	if won == "P1":
		$"Container/P2".play()
	if won == "P2":
		$"Container/P1".play()
	if won == false:
		call_deferred("_exit")

func _on_P1_animation_finished():
	call_deferred("_exit")

func _on_P2_animation_finished():
	call_deferred("_exit")

func _exit():
	queue_free()
	get_tree().quit()
