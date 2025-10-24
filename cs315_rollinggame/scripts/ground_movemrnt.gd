extends Node3D

func _process(delta: float) -> void:
	var player_dir = Input.get_vector("left", "right", "up", "down")
	
	##movement will be in the x and z directions
	## do the roation
	self.rotate_x(player_dir.x * delta)
	self.rotate_z(player_dir.y * delta)
	
	## don't rotate too far
	self.rotation.x = clamp(self.rotation.x, -0.5, 0.5)
	self.rotation.z = clamp(self.rotation.z, -0.5, 0.5)
