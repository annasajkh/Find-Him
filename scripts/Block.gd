extends StaticBody2D


export(bool) var hide

func _ready() -> void:
	if hide:
		$MeshInstance2D.visible = false
