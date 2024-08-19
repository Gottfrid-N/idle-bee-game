@icon("res://TileMapLayerWithDataArray")
class_name TileMapLayerWithDataArray extends TileMapLayer
## Node for displaying a 2D matrix of [TileMapLayerWithDataArray.Tile] using [TileMapLayer].
##
## @experimental


## A [TileMapLayerWithDataArray.Tile] array.
@export var tiles: Array


## Refreshes the displayed tiles in the [TileMapLayer] with [TileMapLayerWithDataArray.tiles].
func refresh_tiles_from_data():
    for tile: Tile in tiles:
        set_cell(tile.position, tile.source_id, tile.atlas_position)