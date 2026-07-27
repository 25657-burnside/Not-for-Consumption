extends CharacterBody2D

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

# Changed the variable name to make more sense for our new logic
var is_triggered = false 

func _ready():
	$DetectionArea.body_entered.connect(_on_detection_area_body_entered)

func _physics_process(delta):
	# Once triggered, it will ALWAYS experience gravity
	if is_triggered:
		velocity.y += gravity * delta
		
		move_and_slide()
		
		# If the block is resting on something (the player OR the real floor)
		if is_on_floor():
			# We set velocity to 0 so gravity doesn't build up infinite speed 
			# while it sits there, but we DO NOT turn off the trigger!
			velocity.y = 0

func _on_detection_area_body_entered(body):
	# Trigger the block to wake up if the player walks under it
	if body.is_in_group("player"):
		is_triggered = true
