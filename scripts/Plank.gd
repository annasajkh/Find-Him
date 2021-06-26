extends RigidBody2D


func _process(delta: float) -> void:
	if position.y > 500:
		queue_free()
