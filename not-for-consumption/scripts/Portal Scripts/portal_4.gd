extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "PlayerTOPDOWN":
		TransitionscreenBlack.transition_to("res://endcredits.tscn")


func _on_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
