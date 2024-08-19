class_name Tile extends Object
## A tile with the data that [TileMapLayer] needs + [Tile.id] and [Tile.data].
##
## @experimental


@export var position: Vector2i
@export var id: int
@export var data: Array
@export var source_id: int
@export var atlas_position: Vector2i


func _init(_position: Vector2i, _id: int, _data: Array, _source_id: int, _atlas_position: Vector2i):
    position = _position
    id = _id
    data = _data
    source_id = _source_id
    atlas_position = _atlas_position


func _to_string():
    return str(position) + str(id) + str(data) + str(source_id) + str(atlas_position)