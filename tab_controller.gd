extends Control


var current_tab: Container


func _ready():
	current_tab = $Flowers
	current_tab.visible = true


func _process(delta):
	pass


func switch_tab(tab: Node):
	if (current_tab != tab):
		current_tab.visible = false
		current_tab = tab
		current_tab.visible = true

func _on_flowers_pressed():
	switch_tab($Flowers)


func _on_bees_pressed():
	switch_tab($Honeybees)


func _on_bumblebees_pressed():
	switch_tab($Bumblebees)


func _on_tile_grid_pressed():
	switch_tab($TileGrid)
