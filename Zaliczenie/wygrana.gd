extends Control





func _on_Button_pressed():
	get_tree().change_scene("res://poczatek.tscn")

func _ready():
	get_node("Label").text = Global.imiegracza
