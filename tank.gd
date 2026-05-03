extends Node2D
var charged = false
var charging = false
var chargepercentage = 0

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
	elif chargepercentage == 100 and Input.is_action_just_released("spray"):
		blast()

	if Global.PlayerFacing == "right":
		$CPUParticles2D.direction.x = -2
		$CPUParticles2D.gravity.x = 200
		
	elif Global.PlayerFacing == "left":
		$CPUParticles2D.direction.x = 2
		$CPUParticles2D.gravity.x = -200

	print ("chargepercentage:", chargepercentage)
	print ("charging: ", charging)
	print("charged: ", charged)

func blast():
	$CPUParticles2D.emitting = true
	charged = false
	chargepercentage = 0
