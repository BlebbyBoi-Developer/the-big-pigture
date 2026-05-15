extends VBoxContainer


func _ready():
	var start = Button.new()
	start.text = "Begin"
	start.pressed.connect(_start_button_pressed)
	add_child(start)
	
	var credits = Button.new()
	credits.text = "Credits"
	credits.pressed.connect(_credits_button_pressed)
	add_child(credits)

func _start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/Level1.tscn")

func _credits_button_pressed():
	$".".visible = false
	$"../Credits/MeshInstance2D".visible = true
	$"../Credits/Label".visible = true
	$"../Credits/Label2".visible = true
