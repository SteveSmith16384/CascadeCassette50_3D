extends Area

func _process(delta):
	self.translation.z += delta * 25
	
	if self.translation.z > 5:
		self.get_parent().remove_child(self)
		self.queue_free()
	pass
