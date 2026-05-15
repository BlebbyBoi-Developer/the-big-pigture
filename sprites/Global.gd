extends Node2D

var PlayerFacing = "right"
@export var debug = false

func _process(_delta):
	if Input.is_action_pressed("ui_right"):
		PlayerFacing = "right"
	elif Input.is_action_pressed("ui_left"):
		PlayerFacing = "left"

func _die():
	pass

func _win():
	pass




	if Global.debug == true:
		print("playerfacing", PlayerFacing)
