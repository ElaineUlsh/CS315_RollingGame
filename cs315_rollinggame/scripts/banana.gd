extends Area3D

func _on_body_entered(body: Node3D) -> void:
	self.queue_free()
	print("here")
	pass # Replace with function body.
