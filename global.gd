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
@export var honeybee_honey_amount := 0

@export_group("bumblebee")
@export var bumblebee_amount := 0

@export_group("node")
@export var debug_label: Label
@export var flower_label: Label
@export var honeybee_label: Label
@export var honeybee_gathering_label: Label
@export var honeybee_conversion_label: Label
@export var bumblebee_label: Label


func _ready():
	flower_label = $/root/Main/GUI/Tabs/Flowers/FlowerLabel
	honeybee_label = $/root/Main/GUI/Tabs/Honeybees/HoneybeeLabel
	honeybee_gathering_label = $/root/Main/GUI/Tabs/Honeybees/HoneybeeGatheringLabel
	honeybee_conversion_label = $/root/Main/GUI/Tabs/Honeybees/HoneybeeConversionLabel
	bumblebee_label = $/root/Main/GUI/Tabs/Bumblebees/BumblebeeLabel


func _process(delta):
	flower_power = flower_amount * flower_multiplier
	honeybee_gathering_power = honeybee_amount * honeybee_gathering_multiplier
	honeybee_conversion_power = honeybee_amount * honeybee_conversion_multiplier
