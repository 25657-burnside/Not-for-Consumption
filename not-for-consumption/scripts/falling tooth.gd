extends RayCast2D
#Ray cast detects the player, we can do that with Signals
#Spawn in tooth - tooth falls evryone dies
func _process(delta: float) -> void:
	if self.is_colliding():
		var collider = self.get_collider()
		if collider.name == "player":
			
