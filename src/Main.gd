extends Spatial

func _ready():
	#var game = preload("res://Games/TenPins/TenPins.tscn")
	var game = preload("res://Games/Voyager/Voyager.tscn")
	self.add_child(game.instance())
	pass


func _process(delta):
	pass
