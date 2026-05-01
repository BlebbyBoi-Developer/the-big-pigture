extends Label


@onready var tank = get_node("/root/World/Player/Tank")

func _process(_delta):
	self.text = str(int(tank.chargepercentage))
