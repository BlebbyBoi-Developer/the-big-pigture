
extends ProgressBar

@onready var tank = get_node("../../Player/Tank")

func _process(_delta):
	value = tank.chargepercentage
