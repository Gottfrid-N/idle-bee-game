extends Node

@export var hives: Array
var tile_map: TileMapLayerWithDataArray

func _ready():
    tile_map = get_node("TileMapLayer")
    generate_tile_array(5, 5)
    tile_map.refresh_tiles_from_data()


func _process(delta):
    pass


func generate_tile_array(rows: int, columns: int):
    for row: int in rows:
        for column: int in columns:
            print((row*columns) + column)
            print(row % 2)
            tile_map.tiles.append(Tile.new(Vector2i(row, column), -0, [1000], row % 2, Vector2i(0, 0)))
