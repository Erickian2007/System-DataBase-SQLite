extends Camera2D

export(Vector2) var default_position
export(float) var shake_force = 10.0
export(float) var shake_time = 0.3

var shaking: bool = false setget set_shaking

func set_shaking(value: bool) -> void:
	shaking = value
	
	var old_time: float = shake_time
	while shake_time > 0 and shake_force > 0:
		shake_time -= get_process_delta_time()
		
		var shake_x = rand_range(-1, 1)
		position.x = shake_x * shake_force
		
		print(shake_time)
		
		yield(get_tree(),"idle_frame")
		
	set_position(default_position)
	shake_time = old_time
	shaking = false
