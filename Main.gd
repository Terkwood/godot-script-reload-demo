extends Control


func _friendly():
	return "> Greetings"

func _ready():
	$Greetings.text = _friendly()


func _on_Reload_timeout():
	ProjectSettings.load_resource_pack("end.pck")
	get_tree().change_scene("res://Main.tscn")
