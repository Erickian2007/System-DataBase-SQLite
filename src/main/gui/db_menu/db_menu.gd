extends Control

func _on_reset_pressed() -> void:
	database.reset_db()
	
	for i in Global.inventory.get_node("Amounts").get_children():
		if i.text == "0":
			Global.ultilitys.get_node("Camera").set_shaking(true)
