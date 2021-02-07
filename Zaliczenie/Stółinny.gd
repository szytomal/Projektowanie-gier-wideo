extends Node

var WynikGracza = -1
var WynikPrzeciwnika = -1
var zyciagracza = 11
var zyciaprzeciwnika = 11

func _ready():
	get_node("Label2").text = Global.imiegracza


func _on_ciana_lewa_body_entered(body): #funkcja odradza piłkę, jeśli ta wejdzie w kontakt z lewą ścianą
	$Pilka1.position = Vector2(750,375)
	WynikPrzeciwnika += 1
	get_tree().call_group('GrupaPilki', 'stop_ball')
	$Timer.start()
	zyciagracza -= 1
	$dzwiekpunktu.play()


func _on_ciana_prawa_body_entered(body):
	$Pilka1.position = Vector2(750,375)
	WynikGracza += 1
	get_tree().call_group('GrupaPilki', 'stop_ball')
	$Timer.start()
	zyciaprzeciwnika -= 1
	$dzwiekpunktu.play()

func _process(delta):
	$WynikGracza.text = str(WynikGracza)
	$WynikPrzeciwnika.text = str(WynikPrzeciwnika)
	if zyciagracza == 0:
		get_tree().change_scene("res://przegrana.tscn")
	if zyciaprzeciwnika == 0:
		get_tree().change_scene("res://wygrana.tscn")


func _on_Timer_timeout():
	get_tree().call_group('GrupaPilki', 'restart_ball')
