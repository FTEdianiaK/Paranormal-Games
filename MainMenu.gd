extends MarginContainer

func _ready():
	get_node("Divide/Separate/2play").hide()

func _on_Credits_pressed():
	$PopCredits.popup_centered()


func _on_OK_pressed():
	$PopCredits.hide()

func _on_Exit_pressed():
	call_deferred("_exit")

func _exit():
	queue_free()
	get_tree().quit()

func _on_Game_pressed():
	get_node("Divide/Separate/2play").show()

func _on_Okay_pressed():
	Global.switch("res://L0.tscn")
