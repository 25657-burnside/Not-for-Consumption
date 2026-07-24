extends Node2D

func _on_timer_timeout():
	get_tree().reload_current_scene()
