extends Node2D

var PlayerFacing = "right"

func _process(_delta):
	if Input.is_action_pressed("ui_right"):
		PlayerFacing = "right"
	elif Input.is_action_pressed("ui_left"):
		PlayerFacing = "left"

func _die():
	pass

func _win():
	pass




	#DEBUG
	print("playerfacing", PlayerFacing)
