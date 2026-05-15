extends TextureProgressBar

@onready var tank = get_node("/root/World/Player/Tank")

func _process(_delta):
	value = tank.chargepercentage
