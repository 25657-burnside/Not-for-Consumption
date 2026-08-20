extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		print("level change")
		TransitionscreenBlack.transition_to("res://level_2.tscn")
