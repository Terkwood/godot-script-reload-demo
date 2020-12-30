extends Control


func _friendly():
	return "Greetings?"

func _ready():
	$Greetings.text = _friendly()

func _on_Reload_timeout():
	ProjectSettings.load_resource_pack("end.pck")
	ResourceLoader.load("res://Main.gd", "", true).take_over_path("res://Main.gd")
	get_tree().change_scene("res://Main.tscn")
