extends RigidBody2D

@export var fall_limit := 648.0

func _physics_process(delta):
	if global_position.y > fall_limit:
		reset_level()

func reset_level():
	get_tree().reload_current_scene()
