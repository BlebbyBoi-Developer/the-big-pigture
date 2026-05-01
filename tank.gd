extends Node2D
var charged = false
var charging = false
var chargepercentage = 0


func _process(_delta):
	if Input.is_action_pressed("spray"):
		charging = true
		chargepercentage += 1

		if chargepercentage >= 100:
			chargepercentage = 99
			charged = true

	print ("chargepercentage:", chargepercentage)
	print ("charging: ", charging)
	print("charged: ", charged)

func blast():
	pass
