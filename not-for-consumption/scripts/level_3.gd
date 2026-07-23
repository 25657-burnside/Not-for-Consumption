extends Node2D

@export var bullet_scene: PackedScene

func _on_timer_timeout():
	# 1. This tells us if the Timer is actually working
	print("Timer just ticked!") 
	
	# 2. This tells us if you assigned the scene in the Inspector
	if not bullet_scene:
		print("ERROR: bullet_scene is missing in the Inspector!")
		return
		
	var bullet = bullet_scene.instantiate()
	
	# 3. ONLY GOING ONE WAY (Right to Left)
	# It spawns at X = 850 (just off the right edge) and moves left (-1)
	bullet.position = Vector2(1298.0, 470.0)
	bullet.direction = -1
	
	add_child(bullet)
	
	# 4. This confirms the bullet was actually created
	print("Bullet successfully spawned at: ", bullet.position)
