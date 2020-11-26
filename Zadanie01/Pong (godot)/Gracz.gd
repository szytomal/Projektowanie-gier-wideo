extends KinematicBody2D

var szybkosc = 600

func _physics_process(delta):
	var predkosc = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		predkosc.y -= 1
	if Input.is_action_pressed("ui_down"):
		predkosc.y +=1
	move_and_slide(predkosc * szybkosc)
