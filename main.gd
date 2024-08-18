extends Node

@export var tiles: Array

func _ready():
	var grid: TileMapLayer = get_node("TileMapLayer")
	setup_tiles(5, 5)
	for tile: Tile in tiles:
		grid.set_cell(tile.position, 0, Vector2i(0, 0))


func _process(delta):
	pass


func setup_tiles(rows: int, columns: int):
	for row in range(rows):
		for column in range(columns):
			tiles.append(Tile.new(-0, [], Vector2i(row, column)))


class Tile extends Object:
	@export var type: int
	@export var data: Array
	@export var position: Vector2i

	func _init(_type: int, _data: Array, _position: Vector2i):
		position = _position
		type = _type
		data = _data
	
	func _to_string():
		return str(type) + str(data)
