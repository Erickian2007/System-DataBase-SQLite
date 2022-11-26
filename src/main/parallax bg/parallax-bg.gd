extends ParallaxBackground

export(Array, int) var layer_speed

var speed = 50
func _physics_process(delta: float) -> void:
	var index = 0
	for parallax_layer in get_children():
		parallax_layer.motion_offset.x -= layer_speed[index] * delta
		index += 1
		
