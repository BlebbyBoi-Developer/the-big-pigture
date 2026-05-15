extends Node2D

func _process(_delta):
	if Input.is_action_pressed("ui_left") and Global.debug == true:
		print ("left")
	elif Input.is_action_pressed("ui_right") and Global.debug == true:
		print ("right")
	elif Input.is_action_pressed("ui_accept") and Global.debug == true:
		print ("jump")
