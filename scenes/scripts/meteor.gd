extends AnimatableBody2D

@export var speed : float = 300.0
@export var move_distance : Vector2 = Vector2(0, 600) 

var start_position : Vector2
var direction := 1

func _ready():
	start_position = global_position

func _physics_process(delta):
	var target_position = start_position + move_distance * direction
	
	var movement = (target_position - global_position).normalized() * speed * delta
	global_position += movement

	if global_position.distance_to(target_position) < 5:
		direction *= -1
