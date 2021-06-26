extends RigidBody2D

onready var animation : AnimationPlayer = $AnimationPlayer
onready var sprite : Sprite = $Sprite
onready var particle : Particles2D = $Particles2D

var dir : float = 10

func _physics_process(delta: float) -> void:
	if position.y > 300:
		get_tree().reload_current_scene()
	rotation_degrees = 0
	if $"../".can_move:
		if Input.is_key_pressed(KEY_D):
			animation.play("walk")
			sprite.flip_h = false
			particle.emitting = true
			dir = 1
			
		elif Input.is_key_pressed(KEY_A):
			animation.play("walk")
			sprite.flip_h = true
			particle.emitting = true
			dir = -1
		else:
			particle.emitting = false
			animation.play("idle")
			dir = 0
		apply_central_impulse(Vector2(dir,0))
	else:
		position.x = $"../".get_node("AnimatedSprite").position.x - 10
