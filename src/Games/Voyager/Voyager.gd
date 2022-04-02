extends Spatial

const PLAYER_SPEED = 15

var wall_cls = preload("res://Games/Voyager/Wall.tscn")

func _ready():
	pass
	
	
func _process(delta):
	if Input.is_key_pressed(KEY_LEFT):
		$Ship.translation.x -= delta * PLAYER_SPEED
	elif Input.is_key_pressed(KEY_RIGHT):
		$Ship.translation.x += delta * PLAYER_SPEED
	
	$Camera.translation = $Ship.translation
	$Camera.translation.y += 3
	$Camera.translation.z += 7
	pass


func _on_Timer_Wall_timeout():
	var wall = wall_cls.instance()
	wall.translation.x = Globals.rnd.randf_range(-5, 5)
	wall.translation.z = $Ship.translation.z - 50
	self.add_child(wall)
	pass
	
