extends Control

func _ready() -> void:
	self.rect_position.x = 0

func _on_back_pressed() -> void:
	$Animation.play("Out")
	
func _on_options_pressed() -> void:
	pass # Replace with function body.
	
func _on_exit_pressed() -> void:
	get_tree().quit()
