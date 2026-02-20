extends Area2D

func _ready():
	print("Goals ready")

func _on_Goals_body_entered(body: Node2D):
	if body.name == "BlueShip":
		print("Reached objective!")
		await get_tree().create_timer(1.0).timeout
		call_deferred("_go_to_level2")

	if body.name == "GreenShip":
		print("FINISH!")

func _go_to_level2():
	get_tree().change_scene_to_file("res://scenes/Level2.tscn")
