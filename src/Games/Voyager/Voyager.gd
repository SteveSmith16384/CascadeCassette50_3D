extends Spatial

const PLAYER_SPEED = 15

const wall_cls = preload("res://Games/Voyager/Wall.tscn")
const alien1_cls = preload("res://Games/Voyager/Alien1.tscn")


func _ready():
	pass
	
	
func _process(delta):
	if Input.is_key_pressed(KEY_LEFT):
		$Ship.translation.x -= delta * PLAYER_SPEED
#		if $Ship.translation.x < -5:
#			$Ship.translation.x = -5
	elif Input.is_key_pressed(KEY_RIGHT):
		$Ship.translation.x += delta * PLAYER_SPEED
#		if $Ship.translation.x > 5:
#			$Ship.translation.x = 5
	
	$Camera.translation = $Ship.translation
	$Camera.translation.y += 3
	$Camera.translation.z += 7
	pass


func _on_Timer_Wall_timeout():
	if Globals.rnd.randi_range(1, 4) == 1:
		create_alien1()
	else:
		create_wall()
		create_wall()
	pass
	
	
func create_wall():
	var wall = wall_cls.instance()
	wall.translation.x = int($Ship.translation.x + Globals.rnd.randi_range(-5, 5))
	wall.translation.z = $Ship.translation.z - 50
	self.add_child(wall)
	pass
	

func create_alien1():
	var wall = alien1_cls.instance()
	wall.translation.x = int($Ship.translation.x + Globals.rnd.randi_range(-5, 5))
	wall.translation.z = $Ship.translation.z - 50
	self.add_child(wall)
	pass
	
