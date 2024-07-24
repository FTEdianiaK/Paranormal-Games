extends Viewport

onready var cam2 = $"TileMap/P2/Camera2D"

func _ready():
	cam2.current = true
