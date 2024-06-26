extends Node



func _ready():
	pass


func _process(_delta):
	update_labels()


func update_labels():	
	Global.flower_label.text = """Flowers:
   Amount: %s
   Power: %s
      Multiplier: %s""" % [Global.flower_power, Global.flower_amount, Global.flower_multiplier]
	
	Global.honeybee_label.text = """Honeybees:
   Amount: %s
   Gathering:
      Power: %s
      Multiplier: %s
   Nectar: %s
   Honey: %s""" % [Global.honeybee_amount, Global.honeybee_gathering_power, Global.honeybee_gathering_multiplier, Global.honeybee_nectar_amount, Global.honeybee_honey_amount]
	
	Global.bumblebee_label.text = """Bumblebees:
   Amount: %s""" % [Global.bumblebee_amount]


func _on_honeybee_gather_clock_timeout():
	var linear := 0
	var post_linear := 0
	
	if (Global.honeybee_gathering_power <= Global.flower_power):
		linear = Global.honeybee_gathering_power
	else: 
		linear = Global.flower_power
		post_linear = (Global.flower_power * (Global.honeybee_gathering_power - Global.flower_power)) / Global.honeybee_gathering_power
	Global.honeybee_nectar_amount += linear + post_linear
	
	Global.honeybee_gathering_label.text = """Gathering:
   Last Cycle: %s
      Linear: %s
      Postlinear: %s""" % [linear + post_linear, linear, post_linear]


func _on_honeybee_convert_nectar_clock_timeout():
	var nectar_consumed := 0
	var honey_produced := 0
	if (Global.honeybee_nectar_amount > Global.honeybee_conversion_power):
		nectar_consumed = Global.honeybee_conversion_power
		Global.honeybee_nectar_amount -= nectar_consumed
		honey_produced = Global.honeybee_conversion_power / 4
		Global.honeybee_honey_amount += honey_produced

	Global.honeybee_conversion_label.text = """Conversion:
   Last Cycle:
      Nectar Consumed: %s
      Honey Produced: %s""" % [nectar_consumed, honey_produced]


func _on_increment_flower_amount_pressed():
	Global.flower_amount += 1


func _on_increment_honeybee_amount_pressed():
	Global.honeybee_amount += 1


func _on_increment_bumble_bee_amount_pressed():
	Global.bumblebee_amount += 1



