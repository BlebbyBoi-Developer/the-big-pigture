extends Area2D

var spray_area: Area2D
var tank: Node

func _ready():
	spray_area = $"../../../Player/Tank/Area2D"
	tank = $"../../../Player/Tank"
	area_entered.connect(on_area_entered)
	area_exited.connect(on_area_exited)

func _process(_delta):
	if spray_area in get_overlapping_areas() and tank.is_blasting:
		$"..".health -= 1
		$"..".take_hit()

func on_area_entered(area: Area2D):
	pass

func on_area_exited(area: Area2D):
	pass
