extends RigidBody

var pos: Vector3

func _ready():
	pos = self.translation
	pass


func reset_position():
	self.translation = pos
