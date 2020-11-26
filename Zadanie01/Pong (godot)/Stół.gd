extends Node



func _on_ciana_lewa_body_entered(body): #funkcja odradza piłkę, jeśli ta wejdzie w kontakt z lewą ścianą
	$Pilka1.position = Vector2(750,375)


func _on_ciana_prawa_body_entered(body):
	$Pilka1.position = Vector2(750,375)
