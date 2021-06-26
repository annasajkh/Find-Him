extends StaticBody2D

export(float) var speed = 0.1
export(float) var dir = 1

func _process(delta: float) -> void:
	if rotation_degrees > 360:
		rotation_degrees = 0


func _on_Timer_timeout() -> void:
	rotation_degrees += speed * dir
