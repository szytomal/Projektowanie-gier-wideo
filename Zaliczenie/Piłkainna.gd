extends KinematicBody2D

var szybkosc = 600
var predkosc = Vector2.ZERO

func _ready():
	randomize()
	predkosc.x = [-1.1,1.1][randi() % 2] #randi wybiera losowo liczbe z arraya -1,1
	predkosc.y = [-0.8,0.8][randi() % 2]
	
func _physics_process(delta):
	var odbicie = move_and_collide(predkosc * szybkosc * delta)
	if odbicie:
		predkosc = predkosc.bounce(odbicie.normal) # dzięki temu piłka się odbija
		$odglosuderzenia.play()

func stop_ball():
	szybkosc = 0

func restart_ball():
	szybkosc = 600
	predkosc.x = [-1.1,1.1][randi() % 2] 
	predkosc.y = [-0.8,0.8][randi() % 2]
