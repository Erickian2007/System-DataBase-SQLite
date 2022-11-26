extends Control

# Amounts
onready var apple: Label = $Amounts/Apple
onready var banana: Label = $Amounts/Banana
onready var strawberry: Label = $Amounts/Strawberry

# Ready 
func _ready() -> void:
	Global.set_inventory(self)
	
	apple.text = str(database.amount_item(1)[0]["amount"])
	banana.text = str(database.amount_item(2)[0]["amount"])
	strawberry.text = str(database.amount_item(3)[0]["amount"])
