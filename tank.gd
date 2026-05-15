extends Node2D
var charged = false
var charging = false
var chargepercentage = 0
var is_blasting = false
var shakestrength = 0.9

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
	if charging and chargepercentage > 0:
		var buildup = (chargepercentage / 100.0) * shakestrength
		$"../Camera2D".offset = Vector2(
			randf_range(-buildup, buildup),
			randf_range(-buildup, buildup)
		)
	elif not charging:
		$"../Camera2D".offset = Vector2.ZERO
	if Global.debug == true:
		print ("chargepercentage:", chargepercentage)
		print ("charging: ", charging)
		print("charged: ", charged)

func shake():
	for i in 3:
		$"../Camera2D".offset = Vector2(
			randf_range(-shakestrength, shakestrength),
			randf_range(-shakestrength, shakestrength)
		)
		await get_tree().process_frame
	$"../Camera2D".offset = Vector2.ZERO

func blast():
	is_blasting = true
	shakestrength = 10.0
	shake()
	shakestrength = 0.9
	$CPUParticles2D.emitting = true
	await get_tree().create_timer(1).timeout
	$CPUParticles2D.emitting = false
	charged = false
	chargepercentage = 0
	is_blasting = false
	return true
