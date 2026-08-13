extends Area2D

# Using @export lets you easily change the bounce power in the Inspector!
@export var bounce_power = -600


func _on_body_entered(body):
	# Check if the thing stepping on the pad is the player
	if body.is_in_group("player"):
		# Immediately shoot the player upward
		body.velocity.y = bounce_power
