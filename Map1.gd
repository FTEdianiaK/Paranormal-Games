extends TileMap

onready var P1 = $"P1"
onready var start = $"Start"
var winner = Global.L4win

func _ready():
	$win.get_stream().loop = false

func _on_P1_hit():
	P1.position = start.position

func _on_Goal_area_entered(area):
	if winner == null:
		winner = "P1"
		$"win".play()
		$"Timer".start()
	else:
		pass

func _on_Timer_timeout():
	$"win".stop()
	if winner == "P1":
		Global.scoreP1 += 1
		call_deferred("_next")
	elif winner == "P2":
		pass

func _next():
	Global.switch("res://L5.tscn")
