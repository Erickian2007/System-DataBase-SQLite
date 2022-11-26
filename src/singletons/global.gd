tool
extends Node

var inventory: Control = null setget set_inventory
var ultilitys: Node = null setget set_ultilitys

func set_inventory(value: Control) -> void:
	inventory = value
	print(inventory.name)
	
func set_ultilitys(value: Node) -> void:
	ultilitys = value
	print(ultilitys.name)
