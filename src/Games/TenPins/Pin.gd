extends RigidBody

var pos: Vector3

func _ready():
	pos = self.translation
	pass


func reset_position():
	var dirx = self.rotation_degrees.x
	var dirz = self.rotation_degrees.z
	
	if abs(dirx) > 2 or abs(dirz) > 2:
		self.queue_free() 
#	self.translation = pos
	pass
	
