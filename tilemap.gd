extends TileMap


# Called when the node enters the scene tree for the first time.
func _ready():
	for x in range(6):
		var xs = ""
		for y in range(6):
			xs += str(get_cell_tile_data(0, Vector2i(x, y)).get_custom_data("type")) + ", "
		print(xs)
		xs = ""




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
