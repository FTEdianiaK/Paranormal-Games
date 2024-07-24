extends Node

var current_scene = null
var scoreP1 = 0
var scoreP2 = 0
var L0win = null
var L1win = null
var L2win = null
var L3win = null
var L4win = null

func _ready():
	var root = get_tree().get_root()
	current_scene = root.get_child(root.get_child_count() - 1)

func switch(path):
	call_deferred("_deferred_switch", path)

func _deferred_switch(path):
	current_scene.free()
	var s = ResourceLoader.load(path)
	current_scene = s.instance()
	get_tree().get_root().add_child(current_scene)
