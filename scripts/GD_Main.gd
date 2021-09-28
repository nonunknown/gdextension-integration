@tool
extends Control

var settings:GD_Settings = null

func _ready():
	if settings == null:
		settings = GD_Settings.new()
		print("k")
	var tree = $Panel/Tabs/Build/VBoxContainer/Classes/VBoxContainer/Tree
	var root = tree.create_item()
	tree.hide_root = true
	var child1 = tree.create_item(root)
	var child2 = tree.create_item(root)
	var subchild1 = tree.create_item(child1)
	subchild1.set_text(0, "Subchild1")

	pass

func _on_bt_install_pressed():
	
	print("pressed")
	pass # Replace with function body.


func _on_bt_open_project_folder_pressed():
	
	pass # Replace with function body.
