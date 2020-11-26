extends KinematicBody2D

var szybkosc = 700
var ball


func _ready():
	ball = get_parent().find_node("Pilka1")

func _physics_process(delta):
	move_and_slide(Vector2(0,koordynaty_przeciwnika()) * szybkosc)
	
func koordynaty_przeciwnika(): #głównym zadaniem jest decydowanie czy ma poruszać się w górę czy w dół
	if abs(ball.position.y - position.y) > 25: #dzięki abs nie ma znaczenia czy piłka jest nad czy pod przeciwnikiem
		if ball.position.y > position.y: return 1
		else: return -1
	else: return 0
	
