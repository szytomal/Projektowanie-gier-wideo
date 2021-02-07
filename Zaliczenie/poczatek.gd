extends Control




func _on_Nowa_gra_pressed():
	get_tree().change_scene("res://wyborstolu.tscn")


func _on_Credits_pressed():
	get_tree().change_scene("res://credits.tscn")






func _on_Imie_text_entered(new_text):
	Global.imiegracza = new_text
	#get_node("Imie").text = new_text
