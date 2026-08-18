extends CanvasLayer

@onready var color_rect = $ColorRect

func _ready():
	color_rect.modulate.a = 0.0
	color_rect.hide()

func transition_to(scene_path: String):
	color_rect.show()
	
	# Fade to black
	var fade_out = create_tween()
	fade_out.tween_property(color_rect, "modulate:a", 1.0, 0.5)
	await fade_out.finished
	
	# Swap the scene while the screen is totally black
	get_tree().change_scene_to_file(scene_path)
	
	# Fade back in
	var fade_in = create_tween()
	fade_in.tween_property(color_rect, "modulate:a", 0.0, 0.5)
	await fade_in.finished
	
	color_rect.hide()
