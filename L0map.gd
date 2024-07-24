extends TileMap

var L0winner = Global.L0win

func _on_Goal1_area_entered(area):
	if L0winner == null:
		L0winner = "P1"
		$"Goal1/Win1".play()
		$"SwitchTime".start()
	else:
		pass

func _on_Goal2_area_entered(area):
	if L0winner == null:
		L0winner = "P2"
		$"Goal2/Win2".play()
		$"SwitchTime".start()
	else:
		pass

func _on_SwitchTime_timeout():
	$"Goal1/Win1".stop()
	$"Goal2/Win2".stop()
	if L0winner == "P1":
		Global.scoreP1 += 1
	if L0winner == "P2":
		Global.scoreP2 +=1
	call_deferred("_next")

func _next():
	Global.switch("res://L1.tscn")
