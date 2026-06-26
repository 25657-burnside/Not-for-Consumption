extends Area2D
var fall_speed = 150
func _process(delta):
	# Move the whole formation down
	position.y -= fall_speed * delta
func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		get_tree().change_scene_to_file("res://scenes/Levels/Level 3.tscn")
