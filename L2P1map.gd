extends TileMap

var temp = 0
var first = false
var second = false
var third = false
var fourth = false
var fifth = false
signal five1

func _process(delta):
	if temp == 5:
		emit_signal("five1")

func _on_Live1_area_entered(area):
	if first == false:
		$"Live1/norm".hide()
		$"Live1/scared".show()
		$"Live1/scream1".play()
		temp += 1
		first = true

func _on_Live2_area_entered(area):
	if second == false:
		$"Live2/norm".hide()
		$"Live2/scared".show()
		$"Live2/scream2".play()
		temp += 1
		second = true


func _on_Live3_area_entered(area):
	if third == false:
		$"Live3/norm".hide()
		$"Live3/scared".show()
		$"Live3/scream3".play()
		temp += 1
		third = true


func _on_Live4_area_entered(area):
	if fourth == false:
		$"Live4/norm".hide()
		$"Live4/scared".show()
		$"Live4/scream4".play()
		temp += 1
		fourth = true


func _on_Live5_area_entered(area):
	if fifth == false:
		$"Live5/norm".hide()
		$"Live5/scared".show()
		$"Live5/scream5".play()
		temp += 1
		fifth = true
