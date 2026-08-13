extends StaticBody2D

func _ready():
	var tween = create_tween().set_loops()
	
	# We changed the time to 1.5 seconds (slower) and added set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(self, "position", Vector2(0, -15), 1.5).as_relative().set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	
	tween.tween_property(self, "position", Vector2(0, 15), 1.5).as_relative().set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
