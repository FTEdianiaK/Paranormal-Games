extends Viewport

onready var cam1 = $"TileMap/P1/Camera2D"

func _ready():
	cam1.current = true
