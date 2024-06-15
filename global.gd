extends Node

@export_group("flower")
@export var flower_amount := 1
@export var flower_multiplier := 1
@export var flower_power := flower_amount * flower_multiplier

@export_group("bee")
@export var bee_amount := 1
@export var bee_gathering_multiplier := 1
@export var bee_gathering_power := bee_amount * bee_gathering_multiplier
@export var bee_conversion_multiplier := 1
@export var bee_conversion_power := bee_amount * bee_gathering_multiplier
@export var bee_nectar_amount := 0

@export_group("bumblebee")
@export var bumblebee_amount := 0

@export_group("node")
@export var flower_label: Label
@export var bee_label: Label
@export var bee_tree: Tree
@export var bee_gathering_label: Label
@export var bumblebee_label: Label

# Called when the node enters the scene tree for the first time.
func _ready():
	flower_label = $/root/Main/GUI/Tabs/Flowers/FlowerLabel
	bee_label = $/root/Main/GUI/Tabs/Bees/BeeLabel
	bee_gathering_label = $/root/Main/GUI/Tabs/Bees/BeeGatheringClockLabel
	bumblebee_label = $/root/Main/GUI/BumblebeeLabel


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	flower_power = flower_amount * flower_multiplier
	bee_gathering_power = bee_amount * bee_gathering_multiplier
	bee_conversion_power = bee_amount * bee_conversion_multiplier
