extends Area


func _on_Ship_area_entered(area):
	if area.is_in_group("wall"):
		pass
	elif area.is_in_group("alien"):
		area.queue_free()
		pass
		
	pass
	
