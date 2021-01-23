extends Control

var rng = RandomNumberGenerator.new()
var mojTekst = "test mojego tekstu"
var szanse = 8

func _ready():
	
	rng.randomize()
	var my_random_number = rng.randi_range(0, 100)
	get_node("Przechowalnia").value = my_random_number
	get_node("zycia").value = szanse



func _on_SpinBox_value_changed(new_text):
	szanse = szanse - 1
	get_node("zycia").value = szanse
	if new_text == $Przechowalnia.value: 
		get_tree().change_scene("res://Przycisk/Wygrana.tscn")
	if new_text == 21: get_node("papiezowaprzechowalnia").value = 21
	if new_text == 37: get_node("papiezowaprzechowalnia2").value = 37
	if $papiezowaprzechowalnia.value == 21 && $papiezowaprzechowalnia2.value ==37: get_tree().change_scene("res://Przycisk/Papiez.tscn")
	if $papiezowaprzechowalnia.value == 21 && $papiezowaprzechowalnia2.value ==37: get_node("papiezowaprzechowalnia").value = 0
	if new_text > $Przechowalnia.value: 
		get_node("Label").text= "Pomdaj mniejszą limczbę"
	if new_text < $Przechowalnia.value:
		get_node("Label").text= "Pomdaj więmkszą limczbę"
	if szanse == 0: get_tree().change_scene("res://Przycisk/Przegrana.tscn")
	if szanse == 0 && new_text == $Przechowalnia.value: 
		get_tree().change_scene("res://Przycisk/Wygrana.tscn")
