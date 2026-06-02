extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		print("level change")
		get_tree().change_scene_to_file("res://scenes/Levels/Level 2.tscn")
