extends Control

func _on_apple_pressed() -> void:
	database.add_item(1)
	Global.inventory.apple.text = str(database.amount_item(1)[0]["amount"])
	
func _on_banana_pressed() -> void:
	database.add_item(2)
	Global.inventory.banana.text = str(database.amount_item(2)[0]["amount"])
	
func _on_strawberry_pressed() -> void:
	database.add_item(3)
	Global.inventory.strawberry.text = str(database.amount_item(3)[0]["amount"])
