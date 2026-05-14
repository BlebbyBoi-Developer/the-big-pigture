extends CharacterBody2D
var health = 300
var dead = false
var flashing = false

func _physics_process(_delta):
	if health <= 0 and not dead:
		dead = true
		die()
		
func take_hit():
	if flashing:
		return
	flashing = true
	$Biggloob.modulate = Color(1, 0, 0)
	await get_tree().create_timer(0.1).timeout
	$AudioStreamPlayer2D.playing = true
	$Biggloob.modulate = Color(1, 1, 1)
	flashing = false
	
func die():
	$Biggloob.visible = false
	$Body.disabled = false
	$Mouth/CollisionShape2D.disabled = false
	$"../../CanvasLayer/Control/Sprite2D".visible = true
	$"../../CanvasLayer/Control/Sprite2D/Label".visible = true
	$"../../CanvasLayer/Control/Sprite2D/AudioStreamPlayer2D".playing = true
	$"../../CanvasLayer/Control/Sprite2D/AudioStreamPlayer2D2".playing = true
