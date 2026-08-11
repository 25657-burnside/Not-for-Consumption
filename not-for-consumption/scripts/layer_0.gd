extends TileMapLayer
var fall_speed = 220

	
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
# Move the whole formation down
	position.y -= fall_speed * delta
# Called when the node enters the scene tree for the first time.
