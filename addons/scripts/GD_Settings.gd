
extends RefCounted
class_name GD_Settings

var extension_path:StringName = &""
var project_path:StringName = &"/projects"
var tmp_path := ProjectSettings.globalize_path("res://addons/gdext_integration/tmp/")
var dir_manager:Directory = Directory.new()

func _init():
	print("Initializing Settings")
	var path:String = ProjectSettings.globalize_path("user://")
	var err = dir_manager.open(path)
	if err != OK:
		printerr("Failed to open user path")
		return
	err = dir_manager.change_dir("../../")
	if err != OK:
		printerr("Failed to go back to godot global folder!")
		return
	if not dir_manager.dir_exists("gdextension"):
		_action_create_gdextension()
		extension_path = StringName(dir_manager.get_current_dir())
	else:
		_action_load_gdextension()
#	dir_manager.make_dir("")
	print("path: ", dir_manager.get_current_dir())
#	print("error: ", err)
	print("ext paths: ", extension_path)
	pass

func _action_create_gdextension() -> void:
	print("Creating dir")
	_create_dir("gdextension","Failed to create gdextension")
	_create_dir("gdextension/projects","Failed to create projects")
	dir_manager.change_dir("gdextension")
	print("Current dir: ", dir_manager.get_current_dir())
	var output
	var err = OS.execute("mv",[tmp_path+"godot-cpp/",dir_manager.get_current_dir()],output )
	if err != OK:
		printerr("Failed moving godot-cpp: ", err)
		printerr(output)
		return
	print(output)
	print("Done Copying files")
	pass

func _action_load_gdextension() -> void:
	print("TODO: Load extension")
	pass

func _create_dir(path:String, error:String) -> int:
	print("Creating: ", path)
	var err = dir_manager.make_dir(path)
	if err != OK:
		printerr(error)
		return err
	return OK
	pass
