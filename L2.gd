extends Node

var L2winner = Global.L2win

func _ready():
	$P1win.get_stream().loop = false
	$P2win.get_stream().loop = false

func _on_TileMap_five1():
	if L2winner == null:
		L2winner = "P1"
		$"P1win".play()
		$"SwitchTime".start()
	else:
		pass

func _on_TileMap_five2():
	if L2winner == null:
		L2winner = "P2"
		$"P2win".play()
		$"SwitchTime".start()
	else:
		pass

func _on_SwitchTime_timeout():
	$"P1win".stop()
	$"P2win".stop()
	if L2winner == "P1":
		Global.scoreP1 += 1
		Global.switch("res://L3.tscn")
	elif L2winner == "P2":
		Global.scoreP2 += 1
		Global.switch("res://L3.tscn")

func _on_Button_pressed():
	$Tutorial.hide()
