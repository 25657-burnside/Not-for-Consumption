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
	
	
