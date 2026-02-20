extends AnimatableBody2D

@export var speed : float = 100.0
@export var move_distance : Vector2 = Vector2(200, 0) 
# contoh:
# Vector2(200,0)  -> horizontal
# Vector2(0,200)  -> vertikal
# Vector2(200,200)-> diagonal

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
