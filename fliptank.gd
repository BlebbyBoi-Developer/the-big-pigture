extends Sprite2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Global.PlayerFacing == "left":
		flip_h = true
		offset.x = -6.655
	elif Global.PlayerFacing == "right":
		flip_h = false
		offset.x = 0
