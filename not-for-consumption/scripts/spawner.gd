extends Node2D

# This creates a list in your Inspector where you can drag and drop your Formation scenes
@export var formations: Array[PackedScene]

# This will keep track of whatever formation is currently on screen
var active_formation: Node2D = null

func _process(delta):
	# If there is NO active formation, spawn a new one!
	if not is_instance_valid(active_formation):
		spawn_random_formation()

func spawn_random_formation():
	# Safety check: make sure you actually added formations to the array in the Inspector
	if formations.is_empty():
		return
		
	# Pick a random scene from the list
	var random_scene = formations.pick_random()
	
	# Create a living copy (instance) of it
	active_formation = random_scene.instantiate() 
	
	# Add it to the game, right where the Spawner is located
	add_child(active_formation)
	active_formation.global_position = global_position
