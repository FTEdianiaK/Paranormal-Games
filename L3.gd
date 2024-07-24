extends Node

func _ready():
	$Timer.start()

func _on_Timer_timeout():
	var tween1 = get_node("HBoxContainer/Nine1/Ghost1/Tween")
	var tween2 = get_node("HBoxContainer/Nine2/Ghost2/Tween")
	tween2.interpolate_property($"HBoxContainer/Nine1/Ghost1", "position",
		Vector2(0, 0), Vector2(125, 0), 3,
		Tween.TRANS_LINEAR, Tween.EASE_IN)
	tween2.interpolate_property($"HBoxContainer/Nine2/Ghost2", "position",
		Vector2(0, 0), Vector2(125, 0), 3,
		Tween.TRANS_LINEAR, Tween.EASE_IN)
	tween1.start()
	tween2.start()
	$"HBoxContainer/Nine1/Capture1".play()
	$"HBoxContainer/Nine2/Capture2".play()
	$"Timer2".start()

func _on_Timer2_timeout():
	Global.switch("res://L4.tscn")
