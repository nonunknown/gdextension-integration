extends Resource
class_name RProjectData


@export var path_base:StringName = &""


func get_path_to_projects() -> String:
	return str(path_base) + "/projects"

func get_path_to_godot_cpp() -> String:
	return str(path_base) + "/godot-cpp"

func get_path_to_project(project_name:String) -> String:
	return str(path_base) + "/projects/%s" % project_name

static func get_project_data(base_path:String) -> RProjectData:
	return load("").instance() as RProjectData
	return 
	

# This is responsible to save the GDExtension data about projects and
# the plugin state
