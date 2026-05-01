extends Node2D
var charged = false
var charging = false
var chargepercentage = 0
@onready var World = get_tree().get_root().get_node("World")
@onready var projectile = load("res://projectile.tscn")

func _process(_delta):
	if Input.is_action_pressed("spray"):
		charging = true
		chargepercentage += 1

		if chargepercentage >= 101:
			chargepercentage = 100
			charged = true
		elif chargepercentage <= 100:
			charged = false

	if not Input.is_action_pressed("spray") and chargepercentage <= 99:
		chargepercentage -= 0.5
		if chargepercentage <= 0:
			chargepercentage = 0
		charging = false
		charged = false
	elif chargepercentage == 100:
		blast()

	print ("chargepercentage:", chargepercentage)
	print ("charging: ", charging)
	print("charged: ", charged)

func blast():
		var instance = projectile.instantiate()
#q		instance.dir = rotation
#		instance.spawnPos = global_position
#		instance.spawnRot = rotation
		World.add_child.call_deferred(instance)
