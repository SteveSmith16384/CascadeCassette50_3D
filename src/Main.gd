extends Spatial

func _ready():
	pass


func _process(delta):
	#var game = preload("res://Games/TenPins/TenPins.tscn")
	var game = preload("res://Games/Voyager/Voyager.tscn")
	get_tree().change_scene_to(game)
	pass
