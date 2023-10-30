@tool
extends EditorPlugin

const PLUGIN_PREFIX = "GodotParadise"
var SETTINGS_BASE = "{project_name}/config".format({"project_name": ProjectSettings.get_setting("application/config/name")})
var setting := {
		"name": SETTINGS_BASE + "/godotenv/root_directory",
		"type": TYPE_STRING,
		"hint": PROPERTY_HINT_TYPE_STRING,
		"value": "res://"
	}


func _enter_tree():
	add_autoload_singleton(_add_prefix("AudioManager"), "res://addons/singleton_bundle/audio/audio.gd")
	add_autoload_singleton(_add_prefix("Environment"), "res://addons/singleton_bundle/dotenv/godotenv.gd")
	add_autoload_singleton(_add_prefix("GeneralUtilities"), "res://addons/singleton_bundle/utils/general_utilities.gd")
	add_autoload_singleton(_add_prefix("VectorWizard"), "res://addons/singleton_bundle/utils/vector_wizard.gd")
	add_autoload_singleton(_add_prefix("SceneTransitioner"), "res://addons/singleton_bundle/scene_transition/scene_transitioner.gd")
	
	add_custom_type(_add_prefix("SceneTransition"), "Node", preload("res://addons/singleton_bundle/scene_transition/scene_transition.gd"), preload("res://addons/singleton_bundle/scene_transition/video.png"))
	
	_setup_settings()
	
	
func _exit_tree():
	remove_autoload_singleton(_add_prefix("AudioManager"))
	remove_autoload_singleton(_add_prefix("Environment"))
	remove_autoload_singleton(_add_prefix("GeneralUtilities"))
	remove_autoload_singleton(_add_prefix("VectorWizard"))
	remove_autoload_singleton(_add_prefix("SceneTransitioner"))
	
	remove_custom_type(_add_prefix("SceneTransition"))
	
	_remove_settings()
	

func _setup_settings():
	ProjectSettings.set_setting(setting["name"], setting["value"])
	ProjectSettings.add_property_info({"name": setting["name"], "type": setting["type"]})
	

func _remove_settings():
	if ProjectSettings.has_setting(setting["name"]):
		ProjectSettings.set_setting(setting["name"], null)
	

func _add_prefix(text: String) -> String:
	return "{prefix}{text}".format({"prefix": PLUGIN_PREFIX, "text": text}).strip_edges()
