extends CharacterBody2D

# Added @export so you can set these in the Inspector
@export var speed: float = 400.0
@export var dir: float = 0.0
@export var spawn_pos: Vector2
@export var spawn_rot: float

func _ready():
	global_position = spawn_pos
	global_rotation = spawn_rot
	
func _physics_process(_delta):
	# Vector2.UP is (0, -1) in Godot
	velocity = Vector2.UP.rotated(dir) * speed
	move_and_slide()
