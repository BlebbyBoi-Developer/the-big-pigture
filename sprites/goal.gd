extends Area2D

func _process(delta):
	if overlaps_body($"../../Player"):
		get_tree().change_scene_to_file("res://scenes/Level2.tscn")
