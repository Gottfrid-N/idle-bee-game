extends Node

@export_group("flower")
@export var flower_amount := 1
@export var flower_multiplier := 1
@export var flower_power := flower_amount * flower_multiplier

@export_group("bee")
@export var honeybee_amount := 1
@export var honeybee_gathering_multiplier := 1
@export var honeybee_gathering_power := honeybee_amount * honeybee_gathering_multiplier
@export var honeybee_conversion_multiplier := 1
@export var honeybee_conversion_power := honeybee_amount * honeybee_gathering_multiplier
@export var honeybee_nectar_amount := 0

@export_group("bumblebee")
@export var bumblebee_amount := 0

@export_group("node")
@export var debug_label: Label
@export var flower_label: Label
@export var bee_label: Label
@export var bee_gathering_label: Label
@export var bumblebee_label: Label


func _ready():
	debug_label = $/root/Main/GUI/Tabs/Debug/DebugLabel
	flower_label = $/root/Main/GUI/Tabs/Flowers/FlowerLabel
	bee_label = $/root/Main/GUI/Tabs/Bees/BeeLabel
	bee_gathering_label = $/root/Main/GUI/Tabs/Bees/BeeGatheringClockLabel
	bumblebee_label = $/root/Main/GUI/Tabs/Bumblebees/BumblebeeLabel


func _process(delta):
	flower_power = flower_amount * flower_multiplier
	honeybee_gathering_power = honeybee_amount * honeybee_gathering_multiplier
	honeybee_conversion_power = honeybee_amount * honeybee_conversion_multiplier
