extends CharacterBody2D

# Get the default gravity from project settings
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

# Variables to control the state of the block
var is_falling = false
var has_fallen = false 

func _ready():
	# Connect the Area2D signal via code (or you can do it via the Node panel)
	$DetectionArea.body_entered.connect(_on_detection_area_body_entered)

func _physics_process(delta):
	# If the trap is triggered, apply gravity
	if is_falling:
		velocity.y += gravity * delta * 2 
		move_and_slide()
		
		# Stop falling when it hits the ground or the player
		if is_on_floor():
			is_falling = false
			has_fallen = true
			# You can add a sound effect or screen shake here!

func _on_detection_area_body_entered(body):
	# Check if the body entering the area is the player
	if body.is_in_group("player") and not has_fallen:
		print("ow")
		is_falling = true



func _on_hitbox_body_entered(body: Node2D) -> void:
	# 1. Check if the block is actually falling
		
		# 2. Check if the thing it crushed is the player
		if body.is_in_group("player"):
			print("OWWWW")
			
			# 2. Turn off the player's processing so they can't move or take input
			body.process_mode = Node.PROCESS_MODE_DISABLED
			
			# 3. Wait for 2.0 seconds
			await get_tree().create_timer(2.0).timeout
			
			# 4. Reload the scene
			get_tree().reload_current_scene()

#Check gemini for the last message and add that
