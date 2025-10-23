extends Camera3D

@export var follow_target : Node3D
@export var offset : Vector3

func _process(delta: float) -> void:
	self.global_position = lerp(self.global_position, follow_target.global_position, 0.1)
	pass
	
## 18:15
