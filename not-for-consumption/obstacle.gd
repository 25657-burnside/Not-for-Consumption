extends Area2D
var fall_speed = 200

func _process(delta):
	# Move the whole formation down
	position.y -= fall_speed * delta
	
	# If the formation goes past the bottom of the screen (e.g., Y = 800)
	# Delete it! Once deleted, your Spawner will automatically spawn the next one.
	if position.y < 32:
		queue_free()
func _on_body_entered(body: Node2D) -> void:
	# Check if the thing that touched us is the player
	if body.is_in_group("player"):
		# This deletes the player from the game. 
		# (Later, you can change this to trigger a game over screen instead!)
		get_tree().reload_current_scene()
