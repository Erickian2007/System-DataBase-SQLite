extends Node

func _on_finished() -> void:
	get_tree().change_scene("res://src/main/main.tscn")
