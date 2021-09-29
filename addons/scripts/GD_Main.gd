@tool
extends Control

var settings:GD_Settings = null

func _ready():

	settings = GD_Settings.new()
	var tree = $Panel/Tabs/Settings/VBoxContainer/Classes/VBoxContainer/Tree
	var root = tree.create_item()
	tree.hide_root = false
	var child1 = tree.create_item(root)
	var child2 = tree.create_item(root)
	var subchild1 = tree.create_item(child1)
	subchild1.set_text(0, "Subchild1")

	pass

func _on_bt_open_project_folder_pressed():
	
	pass # Replace with function body.


func _on_bt_start_pressed():
	var output = []
	var path = ProjectSettings.globalize_path("res://test.sh")
	var ins = OS.execute(path, [], output,true )
	print("opened: ", ins, " %s  :\n" % path, output)
	pass # Replace with function body.
