extends Button

export(String) var scene_to_load


func _on_Nowa_gra_pressed():
	get_tree().change_scene("res://Przycisk/Witamy w grze.tscn")
