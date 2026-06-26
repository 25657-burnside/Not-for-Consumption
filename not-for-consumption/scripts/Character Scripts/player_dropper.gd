extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("left"):
		velocity.x = -300
	if Input.is_action_pressed("right"):
		velocity.x = +300
	if Input.is_action_pressed ("down"):
		position.y += 5
	if Input.is_action_pressed ("up"):
		position.y -= 5
	move_and_slide()
	
	# Restrict the player's X and Y positions
	# clamp(value, minimum_limit, maximum_limit)
	position.x = clamp(position.x, 416.0, 880.0)
	position.y = clamp(position.y, 32.0, 616)
