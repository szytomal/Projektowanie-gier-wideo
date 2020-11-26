extends KinematicBody2D

var szybkosc = 600
var predkosc = Vector2.ZERO

func _ready():
	randomize()
	predkosc.x = [-2,2][randi() % 2] #randi wybiera losowo liczbe z arraya -2,2
	predkosc.y = [-0.8,0.8][randi() % 2]
	
func _physics_process(delta):
	var odbicie = move_and_collide(predkosc * szybkosc * delta)
	if odbicie:
		predkosc = predkosc.bounce(odbicie.normal) # dzięki temu piłka się odbija


