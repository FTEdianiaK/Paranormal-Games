extends TileMap

var L1winner = Global.L1win

func _ready():
	$"P1goal/P1win".get_stream().loop = false
	$"P2goal/P2win".get_stream().loop = false

func _on_P1goal_area_entered(area):
	if L1winner == null:
		L1winner = "P1"
		$"P1goal/P1win".play()
		$"SwitchTime".start()
	else:
		pass

func _on_P2goal_area_entered(area):
	if L1winner == null:
		L1winner = "P2"
		$"P2goal/P2win".play()
		$"SwitchTime".start()
	else:
		pass

func _on_SwitchTime_timeout():
	$"P1goal/P1win".stop()
	$"P2goal/P2win".stop()
	if L1winner == "P1":
		Global.scoreP1 += 1
	if L1winner == "P2":
		Global.scoreP2 +=1
	call_deferred("_next")

func _next():
	Global.switch("res://L2.tscn")
