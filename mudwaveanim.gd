extends AnimationPlayer

func _ready():
	start_infinite_loop()

func start_infinite_loop():

	while is_inside_tree():
		$".".play("wave")
		await get_tree().create_timer(5.0).timeout
