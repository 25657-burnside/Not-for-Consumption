extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "PlayerTOPDOWN":
		get_tree().change_scene_to_file("res://scenes/Assets/portal_4.tscn")


func _on_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
