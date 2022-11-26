extends Node


func _enter_tree() -> void:
	$Ultilitys/Animation.play("In")

func _ready() -> void:
	$Ultilitys/AudioBg.play()
	Global.ultilitys = $Ultilitys
	
func _on_audio_bg_finished() -> void:
	$Ultilitys/AudioBg.play()
