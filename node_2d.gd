extends Node2D

func _process(_delta):
	if Input.is_action_pressed("ui_left"):
		print ("left")
	elif Input.is_action_pressed("ui_right"):
		print ("right")
	elif Input.is_action_pressed("ui_accept"):
		print ("jump")
