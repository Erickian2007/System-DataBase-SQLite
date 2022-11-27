extends Node

const SQLite = preload("res://addons/godot-sqlite/bin/gdsqlite.gdns")

var db
var db_path: String = "res://src/db/Shop_DataBase"


func init_db() -> void:
	db = SQLite.new()
	db.path = db_path
	db.open_db()
	
func amount_item(id):
	init_db()
	
	db.query("SELECT amount FROM inventory WHERE id = " + str(id))
	
	return db.query_result
	
func add_item(id) -> void:
	init_db()
	
	var amount = amount_item(id)[0]["amount"]
	
	db.query("UPDATE inventory SET amount = " + str(int(amount + 1)) + " WHERE id = " + str(id))
	print(amount_item(id))
	
func reset_db() -> void:
	init_db()
	
	db.query("SELECT * FROM inventory")
	for i in (db.query_result.size() + 1):
		db.query("UPDATE inventory SET amount = " + str(0) + " WHERE id = " + str(i))
		print(i)
	for i in Global.inventory.get_node("Amounts").get_children():
		i.text = "0"
