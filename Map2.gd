extends TileMap

onready var P2 = $"P2"
onready var start = $"Start"
var winner = Global.L4win

func _ready():
	$win.get_stream().loop = false

func _on_P2_hit():
	P2.position = start.position

func _on_Goal_area_entered(area):
	if winner == null:
		winner = "P2"
		$"win".play()
		$"Timer".start()
	else:
		pass

func _on_Timer_timeout():
	$"win".stop()
	if winner == "P2":
		Global.scoreP2 += 1
		call_deferred("_next")
	elif winner == "P1":
		pass

func _next():
	Global.switch("res://L5.tscn")

