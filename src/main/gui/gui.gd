extends Control

func _ready() -> void:
	$Pause.visible = false
	
func _unhandled_key_input(event: InputEventKey) -> void:
	if event.pressed:
		if event.is_action_pressed("Esc"):
			if $Pause.visible:
				$Pause/Animation.play("Out")
			else:
				$Pause/Animation.play("In")
				$Pause.visible = true


func _on_animation_finished(anim_name: String) -> void:
	if anim_name == "Out":
		$Pause.visible = false
