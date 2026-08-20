extends Area2D
func _on_body_entered(body: Node2D) -> void:
	if body.name == "player2":
		TransitionscreenBlack.transition_to("res://scenes/Levels/Level 4.tscn")
