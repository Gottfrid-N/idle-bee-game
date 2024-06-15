extends Control


var current_tab: Container


# Called when the node enters the scene tree for the first time.
func _ready():
	current_tab = $Bees
	current_tab.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_bees_pressed():
	if (current_tab != $Bees):
		current_tab.visible = false
		current_tab = $Bees
		current_tab.visible = true


func _on_flowers_pressed():
	if (current_tab != $Flowers):
		current_tab.visible = false
		current_tab = $Flowers
		current_tab.visible = true
