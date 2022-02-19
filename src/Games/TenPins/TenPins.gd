extends Spatial


func _ready():
	$Ball.apply_central_impulse(Vector3(0, 1, -40))
	pass


func _process(delta):
	$Camera.translation = $Ball.translation
	$Camera.translation.y += 1
	$Camera.translation.z += 3
	pass
