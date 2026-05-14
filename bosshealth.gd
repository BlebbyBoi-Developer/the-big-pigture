extends ProgressBar

@onready var boss = get_node("/root/World/TileMapLayers/Boss")

func _process(_delta):
	value = boss.health
