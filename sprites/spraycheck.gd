extends Area2D

func _on_body_entered(body):
	if body.is_in_group("mud") and $"..".blast():
		var sprite = body.get_node("Sprite2D")
		if sprite:
			sprite.visible = false
			
		for child in body.get_children():
			if child is Sprite2D:
				sprite.visible = false

	print(body.get_node())
