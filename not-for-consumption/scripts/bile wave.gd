extends Area2D

# You can change these when spawning to make it move left or right
var speed = 200
var direction = -1 # 1 moves right, -1 moves left
var destroy_x_location = 386.0

func _process(delta):
	# Move horizontally across the screen
	position.x += speed * direction * delta
	if position.x < destroy_x_location:
		queue_free()

# Signal connected from Area2D
func _on_body_entered(body):
	if body.is_in_group("player"):
			# 4. Reload the scene
			get_tree().reload_current_scene()
