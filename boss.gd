extends CharacterBody2D


var health = 300

func _physics_process(_delta):
	if health <= 0:
		$Biggloob.visible = false
		$Body.disabled = false
		$Base.disabled = false
		$Mouth/CollisionShape2D.disabled = false
	print("boss health", health)
