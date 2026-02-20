extends AnimatableBody2D

@export var speed := 300.0

func _physics_procesWs(_delta):
	var direction := 0.0
	print(direction)
	
	if Input.is_action_pressed("move_up"):
		direction = -1.0
	elif Input.is_action_pressed("move_down"):
		direction = 1.0
	
	constant_linear_velocity = Vector2(0, direction * speed)
