extends Node2D

var can_move : bool = true

func _ready() -> void:
	$AudioStreamPlayer.play()

func end() -> void:
	get_tree().quit()

func _on_End_body_entered(body: Node) -> void:
	if body.name == "Player":
		can_move = false
		$End.play("end")
