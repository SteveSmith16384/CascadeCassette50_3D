extends Spatial

var space_pressed = false
var ball_dir : int = -1

func _ready():
	
	pass


func _physics_process(delta):
	if space_pressed == false:
		$Ball.translation.x += delta * ball_dir * 5
		if $Ball.translation.x > 2:
			ball_dir = -1
		elif $Ball.translation.x < -2:
			ball_dir = 1
			
		if Input.is_key_pressed(KEY_SPACE):
			#call_deferred("launch")
			$Ball.apply_central_impulse(Vector3(0, 1, -35))
			space_pressed = true
			$RestartTimer.start()
			

	$Camera.translation = $Ball.translation
	$Camera.translation.y += 1
	$Camera.translation.z += 3

	
	pass




func _on_RestartTimer_timeout():
	for pin in self.get_children():
		if pin.has_method("reset_position"):
			pin.reset_position()
			
	space_pressed = false
	pass
