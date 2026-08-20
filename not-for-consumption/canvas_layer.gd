extends Control



func _on_button_pressed() -> void:
	TransitionScreen.transition_to("res://scenes/Levels/Level 1.tscn")


func _on_button_2_pressed() -> void:
	get_tree().quit()
